﻿using Project;
using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Runtime.InteropServices;
using System.Security.Cryptography;
using System.Text;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Navigation;
using System.Windows.Shapes;
using UpCloudLogic;

namespace UpCloudGui
{
    /// <summary>
    /// Interaction logic for ArtistView.xaml
    /// </summary>
    public partial class ArtistView : Page
    {
        string user;
        string pass;
        CRUDManager crud = new CRUDManager();
        Read read = new Read();
        public ArtistView()
        {
            InitializeComponent();

        }
        public ArtistView(string username, string password)
        {

            InitializeComponent();
            ArtistList(username, password);
            user = username;
            pass = password;
        }
        public void ArtistList(string username, string password)
        {
            var login = new Login();

            LBArtist.ItemsSource = (List<Artist>)login.GetInfo(username, password);


        }


        private void LBArtist_SelectionChanged(object sender, SelectionChangedEventArgs e)
        {
            if (LBArtist.SelectedItem != null)
            {
                crud.SetSelectedArtist(LBArtist.SelectedItem);
                ArtistFields();
            }
        }
        private void LBSong_SelectionChanged(object sender, SelectionChangedEventArgs e)
        {
            if (LBArtist.SelectedItem != null)
            {
                crud.SetSSelectedSong(LBArtist.SelectedItem);
                SongFields();
            }
        }
        private void ArtistFields()
        {
            if (crud.SelectedArtist != null)
            {
                TextName.Text = crud.SelectedArtist.Name;
                TextArtistName.Text = crud.SelectedArtist.ArtistName;
                TextSound.Text = crud.SelectedArtist.Soundcloud;
                TextSpo.Text = crud.SelectedArtist.Spotify;
                TextSocial.Text = crud.SelectedArtist.Socials;

            }
        }
        private void SongFields()
        {
            if (crud.SelectedSong != null)
            {
                TextSName.Text = crud.SelectedSong.Name;
                TextSGenre.Text = crud.SelectedSong.Genre;
                TextSSound.Text = crud.SelectedSong.SoundcloudUrl;
                TextSSpo.Text = crud.SelectedSong.SpotifyUrl;
                TextSFile.Text = crud.SelectedSong.SongFile;
                TextSStatus.Content = crud.SelectedSong.Status;

            }
        }

        private void Button_Click(object sender, RoutedEventArgs e)
        {
            var mngID = crud.SelectedArtist.ArtistId;
            crud.UpdateArtist(mngID, TextName.Text, TextArtistName.Text, TextSound.Text, TextSpo.Text, TextSocial.Text);
            this.NavigationService.Navigate(new ArtistView(user, pass));


        }

        private void SongList(int artistID)
        {
            LBSong.ItemsSource = (List<Song>)read.RetrieveSongs(artistID);


        }
        private void Song_Click(object sender, RoutedEventArgs e)
        {
            LArtist.Visibility = Visibility.Hidden;
            LSongs.Visibility = Visibility.Visible;
            BtnSongs.Visibility = Visibility.Hidden;
            if (crud.SelectedArtist != null)
            {
                int artistID = crud.SelectedArtist.ArtistId
                   SongList(artistID);
            }
        }

    }


}

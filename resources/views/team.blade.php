@extends('layout.master')
@include('layout.navbar')
<section id="team">
        <div class="container wow fadeInUp">
                @foreach ($team as $team)
          <div class="section-header">
            <h3 class="section-title">{{$team->tittle}}</h3>
            <p class="section-description">{{$team->subtittle}}</p>
          </div>
                @endforeach
          <div class="row">
              @foreach ($card as $card)

            <div class="col-lg-3 col-md-6">
              <div class="member">
                <div class="pic"><img src="{{voyager::image($card->image)}}" alt=""></div>
                <h4>{{$card->user_name}} {{$card->user_surname}} </h4>
                <span>{{$card->role}}</span>
                <div class="social">
                  <a href=""><i class="fa fa-twitter"></i></a>
                  <a href=""><i class="fa fa-facebook"></i></a>
                  <a href=""><i class="fa fa-google-plus"></i></a>
                  <a href=""><i class="fa fa-linkedin"></i></a>
                </div>
              </div>
            </div>
            @endforeach

        </div>
      </section><!-- #team -->

@include('layout.footer')

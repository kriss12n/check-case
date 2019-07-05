@extends('layout.master')
@include('layout.navbar')
<section id="services">

        <div class="container wow fadeIn">
            @foreach ($service as $service)
            <div class="section-header">
                    <h3 class="section-title">{{$service->tittle}}</h3>
                    <p class="section-description">{{$service->subtittle}}</p>
                    </div>
            @endforeach
          <div class="row">
              @foreach ($card as $card)
              <div class="col-lg-4 col-md-6 wow fadeInUp" data-wow-delay="0.2s">
                    <div class="box">
                      <div class="icon"><i class="{{$card->card_icon}}"></i></div>
                      <h4 class="title">{{$card->card_tittle}}</h4>
                      <p class="description">{!! $card->card_content !!}</p>
                    </div>
                  </div>
              @endforeach
          </div>

        </div>
      </section><!-- #services -->
@include('layout.footer')


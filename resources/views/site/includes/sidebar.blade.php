@if(isset($data['recent_post']))
<aside>
    <div class="sidebar">
      <div class="widget-box">
        <h3>Recent Post</h3>
        <div class="events-widget">
          <ul>
            @foreach($data['recent_post'] as $row)
            <li>
                @include('site.includes.date.date-d-M')
             
              <div class="text-col"> <a href="{{ route('site.post.show', ['id' => $row->post_unique_id]) }}">{{ $row->title }} </a> </div>
            </li>
            @endforeach
          </ul>
        </div>
      </div>
    </div>
  </aside>
@endif

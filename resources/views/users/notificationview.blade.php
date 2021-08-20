@extends('layouts.app')

@section('content')

<body>
<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-8">
            <div class="card">
                <div class="card-header">{{ __('Details') }}</div>

                <div class="card-body">
  <table class="table table-dark">
  <thead>
    <tr>
      <th scope="col">#</th>
      <th scope="col">DATA</th>
      <th scope="col">EDIT/UPDATE</th>
      <th scope="col">DELETE</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      @foreach ($users as $user)
      <td>{{ $user->id }}</td>
      <td>{{ $user->data}}</td>
      <td><button type="submit" class="btn btn-primary">EDIT/UPDTAE</button></td>
      <td><button type="submit" class="btn btn-danger">DELETE</button></td>
     </tr>
  </tbody>
  @endforeach
</table>
</div>
</div>
</div>
</div>
</body>
@endsection
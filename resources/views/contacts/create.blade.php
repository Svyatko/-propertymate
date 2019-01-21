@extends('layouts.app')

@section('content')
    <div class="mt-3">
        <form action="{{ route('contacts.store') }}" method="POST">
            @csrf
            <div class="form-group">
                <label for="name" class="form-label form-label--required">Name</label>
                <input class="form-control" name="name" id="name" value="{{ old('name') }}">
                @if($errors->has('name'))
                    <div class="alert alert-danger mt-3">
                        {{ $errors->first('name') }}
                    </div>
                @endif
            </div>
            <div class="form-group">
                <label for="surname" class="form-label form-label--required">Surname</label>
                <input class="form-control" name="surname" id="surname" value="{{ old('surname') }}">
                @if($errors->has('surname'))
                    <div class="alert alert-danger mt-3">
                        {{ $errors->first('surname') }}
                    </div>
                @endif
            </div>

            @if(count($fields) > 0)
                @foreach($fields as $field)
                    @switch($field->type)
                        @case('input')
                            @include('contacts.includes.input')
                        @break
                        @case('date')
                            @include('contacts.includes.date')
                        @break
                        @case('multiple')
                            @include('contacts.includes.multiple')
                        @break
                        @case('select')
                            @include('contacts.includes.select')
                        @break
                        @default
                            @include('contacts.includes.input')
                    @endswitch
                @endforeach
            @endif


            <div class="form-group">
                <button class="btn btn-primary">Create</button>
            </div>
        </form>
    </div>
@endsection
@extends('layouts.app')

@section('content')
    <div class="mt-3">
        <div>
            <b>Full Name: </b> {{ "$contact->name $contact->surname" }}
        </div>
        <div class="mt-3">
            <b>Custom fields: </b>
            <div class="ml-3">
                @if(count($contact->fields) > 0)
                    @foreach($contact->fields as $field)
                        <div>
                            Name: {{ $field->name }}<br>
                            Value: {{ $field->pivot->value }}<br>
                        </div>
                        @if(!$loop->last)
                            <hr>
                        @endif
                    @endforeach
                @else
                    <h3>No fields added</h3>
                @endif
            </div>
        </div>
    </div>
@endsection
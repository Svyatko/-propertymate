@extends('layouts.app')

@section('content')
    <div>
        <a class="btn btn-primary" href="{{ route('fields.create') }}">Field create</a>
    </div>
    <table class="table table-hover mt-4">
        <thead>
        <tr>
            <th scope="col">Name</th>
            <th scope="col">Created At</th>
            <th class="text-right" scope="col">Actions</th>
        </tr>
        </thead>
        <tbody>
        @foreach($fields as $field)
            <tr>
                <th>{{ $field->name }}</th>
                <td>{{ $field->created_at }}</td>
                <td class="text-right">
                    <a class="mr-1" href="{{ route('fields.edit', $field->id) }}"><i class="fas fa-pen"></i></a>
                    <a href="javascript:;" onclick="$('#contact-{{$field->id}}').submit()"><i class="fas fa-trash-alt"></i></a>
                    <form id="contact-{{$field->id}}" action="{{ route('fields.destroy', $field->id) }}" method="POST">
                        @csrf
                        @method('DELETE')
                    </form>
                </td>
            </tr>
        @endforeach
        </tbody>
    </table>
@endsection
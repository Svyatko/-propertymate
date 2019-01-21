@extends('layouts.app')

@section('content')
    <table class="table table-hover mt-4">
        <thead>
        <tr>
            <th scope="col">Contact ID</th>
            <th scope="col">Full Name</th>
            <th scope="col">Document Number</th>
            <th scope="col">Document Created At</th>
            <th class="text-right" scope="col">Edit Contact</th>
        </tr>
        </thead>
        <tbody>
        @foreach($last_contacts as $contact)
            <tr>
                <th>{{ $contact->contact_id }}</th>
                <td>{{ $contact->full_name }}</td>
                <td>{{ $contact->doc_number }}</td>
                <td>{{ $contact->doc_created_at }}</td>
                <td class="text-right">
                    <div class="row justify-content-around">
                        <a href="{{ route('contacts.show', $contact->contact_id) }}"><i class="far fa-eye"></i></a>
                        <a href="javascript:;" onclick="$('#contact-{{$contact->contact_id}}').submit()"><i class="fas fa-trash-alt"></i></a>
                        <form id="contact-{{$contact->contact_id}}" action="{{ route('contacts.destroy', $contact->contact_id) }}" method="POST">
                            @csrf
                            @method('DELETE')
                        </form>
                    </div>
                </td>
            </tr>
        @endforeach
        </tbody>
    </table>
    {{ $last_contacts->links() }}
@endsection
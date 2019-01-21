@extends('layouts.app')

@section('content')
    <div class="mt-3">
        <form action="{{ route('fields.store') }}" method="POST">
            @csrf

            <div class="form-group">
                <label for="name" class="form-label form-label--required">Name</label>
                <input id="name" class="form-control" name="name" value="{{ old('name') }}" required>
                @if($errors->has('name'))
                    <div class="alert alert-danger mt-3">
                        {{ $errors->first('name') }}
                    </div>
                @endif
            </div>

            <div class="form-group">
                <label for="type">Type</label>
                <select id="type" class="form-control js-select-type" name="type">
                    <option selected disabled>Choose type</option>
                    <option value="input">Text</option>
                    <option value="select">Select</option>
                    <option value="multiple">Multiple select</option>
                    <option value="date">Date</option>
                </select>
                @if($errors->has('type'))
                    <div class="alert alert-danger mt-3">
                        {{ $errors->first('type') }}
                    </div>
                @endif
            </div>
            <div class="form-group">
                <div class="js-put-type"></div>
            </div>
            <div class="form-group">
                <button class="btn btn-primary">Create</button>
            </div>
        </form>
    </div>
@endsection

@push('script')
    <script>
        $(document).ready(function () {
            $('.js-select-type').change(function () {
                var type = $(this).val();

                $.ajax({
                    url: '{{ route('fields.get_type') }}',
                    type: 'POST',
                    data: {
                        _token: '{{ \Illuminate\Support\Facades\Session::token() }}',
                        type: type
                    },
                    success: function (data) {
                        $('.js-put-type').html(data);
                    }
                });
            })
        });
    </script>
@endpush
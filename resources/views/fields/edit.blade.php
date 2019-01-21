@extends('layouts.app')

@section('content')
    <div class="mt-3">
        <form action="{{ route('fields.update', $field->id) }}" method="POST">
            @csrf
            @method('PUT')

            <div class="form-group">
                <label for="name" class="form-label form-label--required">Name</label>
                <input id="name" class="form-control" name="name" value="{{ old('name', $field->name) }}" required>
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
                    <option value="input" @if($field->type==='input') selected @endif>Text</option>
                    <option value="select" @if($field->type==='select') selected @endif>Select</option>
                    <option value="multiple" @if($field->type==='multiple') selected @endif>Multiple select</option>
                    <option value="date" @if($field==='date') selected @endif>Date</option>
                </select>
                @if($errors->has('type'))
                    <div class="alert alert-danger mt-3">
                        {{ $errors->first('type') }}
                    </div>
                @endif
            </div>
            <div class="form-group">
                <div class="js-put-type">

                </div>
            </div>
            <div class="form-group">
                <button class="btn btn-primary">Update</button>
            </div>
        </form>
    </div>
@endsection

@push('script')
    <script>
        $(document).ready(function () {
            sendAjax('{{ $field->type }}');
            $('.js-select-type').change(function () {
                var type = $(this).val();

                sendAjax(type);
            });

            function sendAjax(type) {
                var id = '{{ $field->id }}';
                $.ajax({
                    url: '{{ route('fields.get_type') }}',
                    type: 'POST',
                    data: {
                        _token: '{{ \Illuminate\Support\Facades\Session::token() }}',
                        type: type,
                        id: id
                    },
                    success: function (data) {
                        console.log(data);
                        $('.js-put-type').html(data);
                    }
                });
            }
        });
    </script>
@endpush
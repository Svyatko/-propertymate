<div class="form-group">
    <label>{{ $field->name }}</label>
    <input class="form-control" name="value[{{ $field->id }}]" placeholder="yyyy-mm-dd">
    @if($errors->has('value'))
        <div class="alert alert-danger mt-3">
            {{ $errors->first('value') }}
        </div>
    @endif
</div>
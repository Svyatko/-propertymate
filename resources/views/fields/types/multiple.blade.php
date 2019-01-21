<label for="value" class="form-label form-label--required">Value</label>
@if($field)
<textarea id="value" class="form-control" name="value" rows="6" required>{{ old('value', $field->value) }}</textarea>
@else
    <textarea id="value" class="form-control" name="value" rows="6" required>{{ old('value') }}</textarea>
@endif
<div class="alert alert-warning mt-3" role="alert">
    Enter each options in new line
</div>
@if($errors->has('value'))
    <div class="alert alert-danger mt-3">
        {{ $errors->first('value') }}
    </div>
@endif
class CompletedJobs {

  String _imageUrl ="";
  String _clientName ="";
  String _jobName ="";
  String _cost ="";




  CompletedJobs(this._imageUrl, this._clientName, this._jobName, this._cost);




  String get imageUrl => _imageUrl;

  set imageUrl(String value) {
    _imageUrl = value;
  }

  String get clientName => _clientName;

  String get cost => _cost;

  set cost(String value) {
    _cost = value;
  }

  String get jobName => _jobName;

  set jobName(String value) {
    _jobName = value;
  }

  set clientName(String value) {
    _clientName = value;
  }
}
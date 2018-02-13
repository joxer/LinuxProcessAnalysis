use LWP::UserAgent;
$ua = LWP::UserAgent->new;

$req = HTTP::Request->new(GET => 'http://www.example.com/index.html');
$req->header('Cookie' => 'test=quest');

# send request
$res = $ua->request($req);

# check the outcome
if ($res->is_success) { print $res->decoded_content }
else { print "Error: " . $res->status_line . "\n" }

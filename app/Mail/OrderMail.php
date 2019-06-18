<?php

namespace App\Mail;

use Illuminate\Bus\Queueable;
use Illuminate\Mail\Mailable;
use Illuminate\Queue\SerializesModels;
use Illuminate\Contracts\Queue\ShouldQueue;

class OrderMail extends Mailable
{
    use Queueable, SerializesModels;
        public $email;
        public $isi;
    /**
     * Create a new message instance.
     *
     * @return void
     */
    public function __construct($email,$isi)
    {
        $this->email = $email;
        $this->isi   = $isi;
    }

    /**
     * Build the message.
     *
     * @return $this
     */
    public function build()
    {
        return $this->view('mails.demo')
                    ->text('mails.demo_plain')
                    ->with(
                    [
                        'email' => $this->email,
                        'isi' => $this->isi
                    ]);
    }
}

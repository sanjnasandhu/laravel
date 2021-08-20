<?php

namespace App\Notifications;

use Illuminate\Bus\Queueable;
use Illuminate\Notifications\Notification;
use Illuminate\Contracts\Queue\ShouldQueue;
use Illuminate\Notifications\Messages\MailMessage;

class productNotification extends Notification
{
    use Queueable;
    protected $table = 'notifications';

    private $newmessage;

    /**
     * Create a new notification instance.
     *
     * @return void
     */
    public function __construct($newmessage)
    {
        $this->newmessage =$newmessage;
    }

    /**
     * Get the notification's delivery channels.
     *
     * @param  mixed  $notifiable
     * @return array
     */
    public function via($notifiable)
    {
        return ['database'];
    }
    
    /**
     * Get the array representation of the notification.
     *
     * @param  mixed  $notifiable
     * @return array
     */
    public function toArray($notifiable)
    {
        return [
            'name'=>$this->newmessage['name'],
            'description'=>$this->newmessage['description'],
        ];
    }
    public function users()
    {
        return $this->belongsTo(User::class, 'notifiable_id');
    }
}

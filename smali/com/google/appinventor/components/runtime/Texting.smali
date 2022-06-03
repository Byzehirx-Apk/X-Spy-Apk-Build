.class public Lcom/google/appinventor/components/runtime/Texting;
.super Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;
.source "SourceFile"

# interfaces
.implements Lcom/google/appinventor/components/runtime/ActivityResultListener;
.implements Lcom/google/appinventor/components/runtime/Component;
.implements Lcom/google/appinventor/components/runtime/Deleteable;
.implements Lcom/google/appinventor/components/runtime/OnPauseListener;
.implements Lcom/google/appinventor/components/runtime/OnResumeListener;
.implements Lcom/google/appinventor/components/runtime/OnStopListener;
.implements Lcom/google/appinventor/components/runtime/util/OnInitializeListener;


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->SOCIAL:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "<p>A component that will, when the <code>SendMessage</code> method is called, send the text message specified in the <code>Message</code> property to the phone number specified in the <code>PhoneNumber</code> property.</p> <p>If the <code>ReceivingEnabled</code> property is set to 1 messages will <b>not</b> be received. If <code>ReceivingEnabled</code> is set to 2 messages will be received only when the application is running. Finally if <code>ReceivingEnabled</code> is set to 3, messages will be received when the application is running <b>and</b> when the application is not running they will be queued and a notification displayed to the user.</p> <p>When a message arrives, the <code>MessageReceived</code> event is raised and provides the sending number and message.</p> <p> An app that includes this component will receive messages even when it is in the background (i.e. when it\'s not visible on the screen) and, moreso, even if the app is not running, so long as it\'s installed on the phone. If the phone receives a text message when the app is not in the foreground, the phone will show a notification in the notification bar.  Selecting the notification will bring up the app.  As an app developer, you\'ll probably want to give your users the ability to control ReceivingEnabled so that they can make the phone ignore text messages.</p> <p>If the GoogleVoiceEnabled property is true, messages can be sent over Wifi using Google Voice. This option requires that the user have a Google Voice account and that the mobile Voice app is installed on the phone. The Google Voice option works only on phones that support Android 2.0 (Eclair) or higher.</p> <p>To specify the phone number (e.g., 650-555-1212), set the <code>PhoneNumber</code> property to a Text string with the specified digits (e.g., 6505551212).  Dashes, dots, and parentheses may be included (e.g., (650)-555-1212) but will be ignored; spaces may not be included.</p> <p>Another way for an app to specify a phone number would be to include a <code>PhoneNumberPicker</code> component, which lets the users select a phone numbers from the ones stored in the the phone\'s contacts.</p>"
    iconName = "images/texting.png"
    nonVisible = true
    version = 0x4
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/UsesLibraries;
    value = {
        "google-api-client-beta.jar",
        "google-api-client-android2-beta.jar",
        "google-http-client-beta.jar",
        "google-http-client-android2-beta.jar",
        "google-http-client-android3-beta.jar",
        "google-oauth-client-beta.jar",
        "guava.jar"
    }
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/UsesPermissions;
    value = {
        "com.google.android.apps.googlevoice.permission.RECEIVE_SMS",
        "com.google.android.apps.googlevoice.permission.SEND_SMS",
        "android.permission.ACCOUNT_MANAGER",
        "android.permission.MANAGE_ACCOUNTS",
        "android.permission.GET_ACCOUNTS",
        "android.permission.USE_CREDENTIALS"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/appinventor/components/runtime/Texting$b;,
        Lcom/google/appinventor/components/runtime/Texting$a;,
        Lcom/google/appinventor/components/runtime/Texting$c;
    }
.end annotation


# static fields
.field private static final CACHE_FILE:Ljava/lang/String; = "textingmsgcache"

.field public static final GV_INTENT_FILTER:Ljava/lang/String; = "com.google.android.apps.googlevoice.SMS_RECEIVED"

.field public static final GV_PACKAGE_NAME:Ljava/lang/String; = "com.google.android.apps.googlevoice"

.field private static final GV_SERVICE:Ljava/lang/String; = "grandcentral"

.field public static final GV_SMS_RECEIVED:Ljava/lang/String; = "com.google.android.apps.googlevoice.SMS_RECEIVED"

.field public static final GV_SMS_SEND_URL:Ljava/lang/String; = "https://www.google.com/voice/b/0/sms/send/"

.field public static final GV_URL:Ljava/lang/String; = "https://www.google.com/voice/b/0/redirection/voice"

.field private static final MESSAGE_DELIMITER:Ljava/lang/String; = "\u0001"

.field public static final MESSAGE_TAG:Ljava/lang/String; = "com.google.android.apps.googlevoice.TEXT"

.field public static final META_DATA_SMS_KEY:Ljava/lang/String; = "sms_handler_component"

.field public static final META_DATA_SMS_VALUE:Ljava/lang/String; = "Texting"

.field public static final PHONE_NUMBER_TAG:Ljava/lang/String; = "com.google.android.apps.googlevoice.PHONE_NUMBER"

.field private static final PREF_FILE:Ljava/lang/String; = "TextingState"

.field private static final PREF_GVENABLED:Ljava/lang/String; = "gvenabled"

.field private static final PREF_RCVENABLED:Ljava/lang/String; = "receiving2"

.field private static final PREF_RCVENABLED_LEGACY:Ljava/lang/String; = "receiving"

.field private static final SENT:Ljava/lang/String; = "SMS_SENT"

.field private static final SERVER_TIMEOUT_MS:I = 0x7530

.field public static final SMS_RECEIVED:Ljava/lang/String; = "android.provider.Telephony.SMS_RECEIVED"

.field public static final TAG:Ljava/lang/String; = "Texting Component"

.field public static final TELEPHONY_INTENT_FILTER:Ljava/lang/String; = "android.provider.Telephony.SMS_RECEIVED"

.field public static final TEXTING_REQUEST_CODE:I = 0x54455854

.field private static final USER_AGENT:Ljava/lang/String; = "Mozilla/5.0 (Windows; U; Windows NT 5.1; en-US) AppleWebKit/525.13 (KHTML, like Gecko) Chrome/0.A.B.C Safari/525.13"

.field private static final UTF8:Ljava/lang/String; = "UTF-8"

.field private static activity:Landroid/app/Activity;

.field private static cacheLock:Ljava/lang/Object;

.field private static component:Lcom/google/appinventor/components/runtime/Component;

.field private static isRunning:Z

.field private static messagesCached:I

.field private static receivingEnabled:I


# instance fields
.field private authToken:Ljava/lang/String;

.field private container:Lcom/google/appinventor/components/runtime/ComponentContainer;

.field private googleVoiceEnabled:Z

.field private gvHelper:Lcom/google/appinventor/components/runtime/Texting$c;

.field private havePermission:Z

.field private haveReceivePermission:Z

.field private isInitialized:Z

.field private message:Ljava/lang/String;

.field private pendingQueue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private phoneNumber:Ljava/lang/String;

.field private smsManager:Landroid/telephony/SmsManager;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 180
    const/4 v0, 0x2

    sput v0, Lcom/google/appinventor/components/runtime/Texting;->receivingEnabled:I

    .line 200
    new-instance v0, Ljava/lang/Object;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/appinventor/components/runtime/Texting;->cacheLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 8

    .prologue
    .line 219
    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    move-object v4, v1

    invoke-interface {v4}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;-><init>(Lcom/google/appinventor/components/runtime/Form;)V

    .line 203
    move-object v3, v0

    new-instance v4, Ljava/util/concurrent/ConcurrentLinkedQueue;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    invoke-direct {v5}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v4, v3, Lcom/google/appinventor/components/runtime/Texting;->pendingQueue:Ljava/util/Queue;

    .line 206
    move-object v3, v0

    const/4 v4, 0x0

    iput-boolean v4, v3, Lcom/google/appinventor/components/runtime/Texting;->havePermission:Z

    .line 209
    move-object v3, v0

    const/4 v4, 0x0

    iput-boolean v4, v3, Lcom/google/appinventor/components/runtime/Texting;->haveReceivePermission:Z

    .line 220
    const-string/jumbo v3, "Texting Component"

    const-string/jumbo v4, "Texting constructor"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 221
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lcom/google/appinventor/components/runtime/Texting;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    .line 222
    move-object v3, v0

    sput-object v3, Lcom/google/appinventor/components/runtime/Texting;->component:Lcom/google/appinventor/components/runtime/Component;

    .line 223
    move-object v3, v1

    invoke-interface {v3}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v3

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    .line 225
    sput-object v4, Lcom/google/appinventor/components/runtime/Texting;->activity:Landroid/app/Activity;

    const-string/jumbo v4, "TextingState"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    .line 226
    move-object v2, v4

    if-eqz v3, :cond_3

    .line 227
    move-object v3, v2

    const-string/jumbo v4, "receiving2"

    const/4 v5, -0x1

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    move v7, v3

    move v3, v7

    move v4, v7

    .line 228
    sput v4, Lcom/google/appinventor/components/runtime/Texting;->receivingEnabled:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_0

    .line 229
    move-object v3, v2

    const-string/jumbo v4, "receiving"

    const/4 v5, 0x1

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 230
    const/4 v3, 0x2

    sput v3, Lcom/google/appinventor/components/runtime/Texting;->receivingEnabled:I

    .line 236
    :cond_0
    :goto_0
    move-object v3, v0

    move-object v4, v2

    const-string/jumbo v5, "gvenabled"

    const/4 v6, 0x0

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, v3, Lcom/google/appinventor/components/runtime/Texting;->googleVoiceEnabled:Z

    .line 237
    const-string/jumbo v3, "Texting Component"

    new-instance v4, Ljava/lang/StringBuilder;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    const-string/jumbo v6, "Starting with receiving Enabled="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v5, Lcom/google/appinventor/components/runtime/Texting;->receivingEnabled:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " GV enabled="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v5, v0

    iget-boolean v5, v5, Lcom/google/appinventor/components/runtime/Texting;->googleVoiceEnabled:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 244
    :goto_1
    move-object v3, v0

    iget-boolean v3, v3, Lcom/google/appinventor/components/runtime/Texting;->googleVoiceEnabled:Z

    if-eqz v3, :cond_1

    .line 245
    new-instance v3, Lcom/google/appinventor/components/runtime/Texting$a;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move-object v5, v0

    invoke-direct {v4, v5}, Lcom/google/appinventor/components/runtime/Texting$a;-><init>(Lcom/google/appinventor/components/runtime/Texting;)V

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Void;

    invoke-virtual {v3, v4}, Lcom/google/appinventor/components/runtime/Texting$a;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object v3

    .line 247
    :cond_1
    move-object v3, v0

    invoke-static {}, Landroid/telephony/SmsManager;->getDefault()Landroid/telephony/SmsManager;

    move-result-object v4

    iput-object v4, v3, Lcom/google/appinventor/components/runtime/Texting;->smsManager:Landroid/telephony/SmsManager;

    .line 248
    move-object v3, v0

    const-string/jumbo v4, ""

    invoke-virtual {v3, v4}, Lcom/google/appinventor/components/runtime/Texting;->PhoneNumber(Ljava/lang/String;)V

    .line 250
    move-object v3, v0

    const/4 v4, 0x0

    iput-boolean v4, v3, Lcom/google/appinventor/components/runtime/Texting;->isInitialized:Z

    .line 251
    const/4 v3, 0x0

    sput-boolean v3, Lcom/google/appinventor/components/runtime/Texting;->isRunning:Z

    .line 254
    move-object v3, v1

    invoke-interface {v3}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v3

    move-object v4, v0

    invoke-virtual {v3, v4}, Lcom/google/appinventor/components/runtime/Form;->registerForOnInitialize(Lcom/google/appinventor/components/runtime/util/OnInitializeListener;)V

    .line 255
    move-object v3, v1

    invoke-interface {v3}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v3

    move-object v4, v0

    invoke-virtual {v3, v4}, Lcom/google/appinventor/components/runtime/Form;->registerForOnResume(Lcom/google/appinventor/components/runtime/OnResumeListener;)V

    .line 256
    move-object v3, v1

    invoke-interface {v3}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v3

    move-object v4, v0

    invoke-virtual {v3, v4}, Lcom/google/appinventor/components/runtime/Form;->registerForOnPause(Lcom/google/appinventor/components/runtime/OnPauseListener;)V

    .line 257
    move-object v3, v1

    invoke-interface {v3}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v3

    move-object v4, v0

    invoke-virtual {v3, v4}, Lcom/google/appinventor/components/runtime/Form;->registerForOnStop(Lcom/google/appinventor/components/runtime/OnStopListener;)V

    .line 258
    return-void

    .line 232
    :cond_2
    const/4 v3, 0x1

    sput v3, Lcom/google/appinventor/components/runtime/Texting;->receivingEnabled:I

    goto/16 :goto_0

    .line 239
    :cond_3
    const/4 v3, 0x1

    sput v3, Lcom/google/appinventor/components/runtime/Texting;->receivingEnabled:I

    .line 240
    move-object v3, v0

    const/4 v4, 0x0

    iput-boolean v4, v3, Lcom/google/appinventor/components/runtime/Texting;->googleVoiceEnabled:Z

    goto :goto_1
.end method

.method public static MessageReceived(Ljava/lang/String;Ljava/lang/String;)V
    .locals 10
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
    .end annotation

    .prologue
    .line 416
    move-object v0, p0

    move-object v1, p1

    sget v3, Lcom/google/appinventor/components/runtime/Texting;->receivingEnabled:I

    const/4 v4, 0x1

    if-le v3, v4, :cond_1

    .line 417
    const-string/jumbo v3, "Texting Component"

    new-instance v4, Ljava/lang/StringBuilder;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    const-string/jumbo v6, "MessageReceived from "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v5, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v5, v1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 418
    sget-object v3, Lcom/google/appinventor/components/runtime/Texting;->component:Lcom/google/appinventor/components/runtime/Component;

    const-string/jumbo v4, "MessageReceived"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    const/4 v7, 0x0

    move-object v8, v0

    aput-object v8, v6, v7

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    const/4 v7, 0x1

    move-object v8, v1

    aput-object v8, v6, v7

    invoke-static {v3, v4, v5}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 419
    const-string/jumbo v3, "Texting Component"

    const-string/jumbo v4, "Dispatch successful"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 427
    :goto_0
    return-void

    .line 421
    :cond_0
    const-string/jumbo v3, "Texting Component"

    const-string/jumbo v4, "Dispatch failed, caching"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 422
    sget-object v3, Lcom/google/appinventor/components/runtime/Texting;->cacheLock:Ljava/lang/Object;

    move-object v9, v3

    move-object v3, v9

    move-object v4, v9

    move-object v2, v4

    monitor-enter v3

    .line 423
    :try_start_0
    sget-object v3, Lcom/google/appinventor/components/runtime/Texting;->activity:Landroid/app/Activity;

    move-object v4, v0

    move-object v5, v1

    invoke-static {v3, v4, v5}, Lcom/google/appinventor/components/runtime/Texting;->addMessageToCache(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 424
    move-object v3, v2

    monitor-exit v3

    goto :goto_0

    :catchall_0
    move-exception v3

    move-object v0, v3

    move-object v3, v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v3, v0

    throw v3

    .line 427
    :cond_1
    goto :goto_0
.end method

.method static synthetic access$002(Lcom/google/appinventor/components/runtime/Texting;Z)Z
    .locals 7

    .prologue
    .line 134
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    move-object v5, v2

    move v6, v3

    move v2, v6

    move-object v3, v5

    move v4, v6

    iput-boolean v4, v3, Lcom/google/appinventor/components/runtime/Texting;->havePermission:Z

    move v0, v2

    return v0
.end method

.method static synthetic access$100(Lcom/google/appinventor/components/runtime/Texting;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 134
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Lcom/google/appinventor/components/runtime/Texting;->sendViaSms(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/google/appinventor/components/runtime/Texting;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 134
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/Texting;->message:Ljava/lang/String;

    move-object v0, v1

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/appinventor/components/runtime/Texting;Landroid/content/Context;Landroid/content/BroadcastReceiver;ILjava/lang/String;)V
    .locals 10

    .prologue
    .line 134
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, v0

    move-object v6, v1

    move-object v7, v2

    move v8, v3

    move-object v9, v4

    invoke-direct {v5, v6, v7, v8, v9}, Lcom/google/appinventor/components/runtime/Texting;->handleSentMessage(Landroid/content/Context;Landroid/content/BroadcastReceiver;ILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$400()Landroid/app/Activity;
    .locals 1

    .prologue
    .line 134
    sget-object v0, Lcom/google/appinventor/components/runtime/Texting;->activity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$502(Lcom/google/appinventor/components/runtime/Texting;Z)Z
    .locals 7

    .prologue
    .line 134
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    move-object v5, v2

    move v6, v3

    move v2, v6

    move-object v3, v5

    move v4, v6

    iput-boolean v4, v3, Lcom/google/appinventor/components/runtime/Texting;->haveReceivePermission:Z

    move v0, v2

    return v0
.end method

.method static synthetic access$600(Lcom/google/appinventor/components/runtime/Texting;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 134
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/Texting;->authToken:Ljava/lang/String;

    move-object v0, v1

    return-object v0
.end method

.method static synthetic access$602(Lcom/google/appinventor/components/runtime/Texting;Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    .prologue
    .line 134
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    move-object v5, v2

    move-object v6, v3

    move-object v2, v6

    move-object v3, v5

    move-object v4, v6

    iput-object v4, v3, Lcom/google/appinventor/components/runtime/Texting;->authToken:Ljava/lang/String;

    move-object v0, v2

    return-object v0
.end method

.method static synthetic access$700(Lcom/google/appinventor/components/runtime/Texting;)V
    .locals 2

    .prologue
    .line 134
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Lcom/google/appinventor/components/runtime/Texting;->processPendingQueue()V

    return-void
.end method

.method static synthetic access$800(Lcom/google/appinventor/components/runtime/Texting;)Lcom/google/appinventor/components/runtime/Texting$c;
    .locals 2

    .prologue
    .line 134
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/Texting;->gvHelper:Lcom/google/appinventor/components/runtime/Texting$c;

    move-object v0, v1

    return-object v0
.end method

.method static synthetic access$802(Lcom/google/appinventor/components/runtime/Texting;Lcom/google/appinventor/components/runtime/Texting$c;)Lcom/google/appinventor/components/runtime/Texting$c;
    .locals 7

    .prologue
    .line 134
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    move-object v5, v2

    move-object v6, v3

    move-object v2, v6

    move-object v3, v5

    move-object v4, v6

    iput-object v4, v3, Lcom/google/appinventor/components/runtime/Texting;->gvHelper:Lcom/google/appinventor/components/runtime/Texting$c;

    move-object v0, v2

    return-object v0
.end method

.method private static addMessageToCache(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    .prologue
    .line 691
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v4, v2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "\u0001"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v1, v3

    .line 692
    const-string/jumbo v3, "Texting Component"

    const-string/jumbo v4, "Caching "

    move-object v5, v1

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 693
    move-object v3, v0

    const-string/jumbo v4, "textingmsgcache"

    const v5, 0x8000

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v3

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    .line 694
    move-object v0, v4

    move-object v4, v1

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/FileOutputStream;->write([B)V

    .line 695
    move-object v3, v0

    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V

    .line 696
    sget v3, Lcom/google/appinventor/components/runtime/Texting;->messagesCached:I

    const/4 v4, 0x1

    add-int/lit8 v3, v3, 0x1

    sput v3, Lcom/google/appinventor/components/runtime/Texting;->messagesCached:I

    .line 697
    const-string/jumbo v3, "Texting Component"

    const-string/jumbo v4, "Cached "

    move-object v5, v1

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v3

    .line 702
    .line 703
    :goto_0
    return-void

    .line 699
    :catch_0
    move-exception v3

    const-string/jumbo v3, "Texting Component"

    const-string/jumbo v4, "File not found error writing to cache file"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 702
    goto :goto_0

    .line 701
    :catch_1
    move-exception v3

    const-string/jumbo v3, "Texting Component"

    const-string/jumbo v4, "I/O Error writing to cache file"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 703
    goto :goto_0
.end method

.method public static getCachedMsgCount()I
    .locals 1

    .prologue
    .line 642
    sget v0, Lcom/google/appinventor/components/runtime/Texting;->messagesCached:I

    return v0
.end method

.method public static getMessagesFromIntent(Landroid/content/Intent;)[Landroid/telephony/SmsMessage;
    .locals 10

    .prologue
    .line 561
    move-object v0, p0

    move-object v5, v0

    const-string/jumbo v6, "pdus"

    invoke-virtual {v5, v6}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v5

    check-cast v5, [Ljava/lang/Object;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    .line 562
    move-object v0, v6

    array-length v5, v5

    new-array v5, v5, [[B

    move-object v1, v5

    .line 564
    const/4 v5, 0x0

    move v2, v5

    :goto_0
    move v5, v2

    move-object v6, v0

    array-length v6, v6

    if-ge v5, v6, :cond_0

    .line 565
    move-object v5, v1

    move v6, v2

    move-object v7, v0

    move v8, v2

    aget-object v7, v7, v8

    check-cast v7, [B

    aput-object v7, v5, v6

    .line 564
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 567
    :cond_0
    move-object v5, v1

    array-length v5, v5

    new-array v5, v5, [[B

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    .line 568
    move-object v2, v6

    array-length v5, v5

    move v9, v5

    move v5, v9

    move v6, v9

    .line 569
    move v0, v6

    new-array v5, v5, [Landroid/telephony/SmsMessage;

    move-object v3, v5

    .line 570
    const/4 v5, 0x0

    move v4, v5

    :goto_1
    move v5, v4

    move v6, v0

    if-ge v5, v6, :cond_1

    .line 571
    move-object v5, v2

    move v6, v4

    move-object v7, v1

    move v8, v4

    aget-object v7, v7, v8

    aput-object v7, v5, v6

    .line 572
    move-object v5, v3

    move v6, v4

    move-object v7, v2

    move v8, v4

    aget-object v7, v7, v8

    invoke-static {v7}, Landroid/telephony/SmsMessage;->createFromPdu([B)Landroid/telephony/SmsMessage;

    move-result-object v7

    aput-object v7, v5, v6

    .line 570
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 574
    :cond_1
    move-object v5, v3

    move-object v0, v5

    return-object v0
.end method

.method private declared-synchronized handleSentMessage(Landroid/content/Context;Landroid/content/BroadcastReceiver;ILjava/lang/String;)V
    .locals 9

    .prologue
    .line 963
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-object v8, p0

    monitor-enter v8

    move v5, v3

    packed-switch v5, :pswitch_data_0

    .line 985
    :goto_0
    :pswitch_0
    monitor-exit v8

    return-void

    .line 965
    :pswitch_1
    :try_start_0
    const-string/jumbo v5, "Texting Component"

    const-string/jumbo v6, "Received OK, msg:"

    move-object v7, v4

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    .line 966
    sget-object v5, Lcom/google/appinventor/components/runtime/Texting;->activity:Landroid/app/Activity;

    const-string/jumbo v6, "Message sent"

    const/4 v7, 0x0

    invoke-static {v5, v6, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    .line 967
    goto :goto_0

    .line 969
    :pswitch_2
    const-string/jumbo v5, "Texting Component"

    const-string/jumbo v6, "Received generic failure, msg:"

    move-object v7, v4

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    .line 970
    sget-object v5, Lcom/google/appinventor/components/runtime/Texting;->activity:Landroid/app/Activity;

    const-string/jumbo v6, "Generic failure: message not sent"

    const/4 v7, 0x0

    invoke-static {v5, v6, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    .line 971
    goto :goto_0

    .line 973
    :pswitch_3
    const-string/jumbo v5, "Texting Component"

    const-string/jumbo v6, "Received no service error, msg:"

    move-object v7, v4

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    .line 974
    sget-object v5, Lcom/google/appinventor/components/runtime/Texting;->activity:Landroid/app/Activity;

    const-string/jumbo v6, "No Sms service available. Message not sent."

    const/4 v7, 0x0

    invoke-static {v5, v6, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    .line 975
    goto :goto_0

    .line 977
    :pswitch_4
    const-string/jumbo v5, "Texting Component"

    const-string/jumbo v6, "Received null PDU error, msg:"

    move-object v7, v4

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    .line 978
    sget-object v5, Lcom/google/appinventor/components/runtime/Texting;->activity:Landroid/app/Activity;

    const-string/jumbo v6, "Received null PDU error. Message not sent."

    const/4 v7, 0x0

    invoke-static {v5, v6, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    .line 979
    goto/16 :goto_0

    .line 981
    :pswitch_5
    const-string/jumbo v5, "Texting Component"

    const-string/jumbo v6, "Received radio off error, msg:"

    move-object v7, v4

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    .line 982
    sget-object v5, Lcom/google/appinventor/components/runtime/Texting;->activity:Landroid/app/Activity;

    const-string/jumbo v6, "Could not send SMS message: radio off."

    const/4 v7, 0x1

    invoke-static {v5, v6, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    .line 963
    :catchall_0
    move-exception v0

    monitor-exit v8

    throw v0

    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch
.end method

.method public static handledReceivedMessage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    .prologue
    .line 674
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    sget-boolean v4, Lcom/google/appinventor/components/runtime/Texting;->isRunning:Z

    if-eqz v4, :cond_0

    .line 675
    move-object v4, v1

    move-object v5, v2

    invoke-static {v4, v5}, Lcom/google/appinventor/components/runtime/Texting;->MessageReceived(Ljava/lang/String;Ljava/lang/String;)V

    .line 679
    :goto_0
    return-void

    .line 677
    :cond_0
    sget-object v4, Lcom/google/appinventor/components/runtime/Texting;->cacheLock:Ljava/lang/Object;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    move-object v3, v5

    monitor-enter v4

    .line 678
    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    :try_start_0
    invoke-static {v4, v5, v6}, Lcom/google/appinventor/components/runtime/Texting;->addMessageToCache(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 679
    move-object v4, v3

    monitor-exit v4

    goto :goto_0

    :catchall_0
    move-exception v4

    move-object v0, v4

    move-object v4, v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v4, v0

    throw v4
.end method

.method public static isReceivingEnabled(Landroid/content/Context;)I
    .locals 6

    .prologue
    .line 539
    move-object v0, p0

    move-object v2, v0

    const-string/jumbo v3, "TextingState"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    .line 540
    move-object v0, v3

    const-string/jumbo v3, "receiving2"

    const/4 v4, -0x1

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    move v5, v2

    move v2, v5

    move v3, v5

    .line 541
    move v1, v3

    const/4 v3, -0x1

    if-ne v2, v3, :cond_1

    .line 542
    move-object v2, v0

    const-string/jumbo v3, "receiving"

    const/4 v4, 0x1

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 543
    const/4 v2, 0x2

    move v0, v2

    .line 547
    :goto_0
    return v0

    .line 545
    :cond_0
    const/4 v2, 0x1

    move v0, v2

    goto :goto_0

    .line 547
    :cond_1
    move v2, v1

    move v0, v2

    goto :goto_0
.end method

.method public static isRunning()Z
    .locals 1

    .prologue
    .line 634
    sget-boolean v0, Lcom/google/appinventor/components/runtime/Texting;->isRunning:Z

    return v0
.end method

.method private processCachedMessages()V
    .locals 10

    .prologue
    .line 583
    move-object v0, p0

    sget-object v5, Lcom/google/appinventor/components/runtime/Texting;->cacheLock:Ljava/lang/Object;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    move-object v2, v6

    monitor-enter v5

    .line 584
    move-object v5, v0

    :try_start_0
    invoke-direct {v5}, Lcom/google/appinventor/components/runtime/Texting;->retrieveCachedMessages()[Ljava/lang/String;

    move-result-object v5

    move-object v1, v5

    .line 585
    move-object v5, v2

    monitor-exit v5

    .line 586
    move-object v5, v1

    if-nez v5, :cond_0

    .line 587
    .line 602
    :goto_0
    return-void

    .line 585
    :catchall_0
    move-exception v5

    move-object v3, v5

    move-object v5, v2

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v5, v3

    throw v5

    .line 588
    :cond_0
    const-string/jumbo v5, "Texting Component"

    new-instance v6, Ljava/lang/StringBuilder;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    const-string/jumbo v8, "processing "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v7, v1

    array-length v7, v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " cached messages "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    .line 590
    const/4 v5, 0x0

    move v2, v5

    :goto_1
    move v5, v2

    move-object v6, v1

    array-length v6, v6

    if-ge v5, v6, :cond_2

    .line 591
    move-object v5, v1

    move v6, v2

    aget-object v5, v5, v6

    move-object v3, v5

    .line 592
    const-string/jumbo v5, "Texting Component"

    new-instance v6, Ljava/lang/StringBuilder;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    const-string/jumbo v8, "Message + "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move v7, v2

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v7, v3

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    .line 594
    move-object v5, v3

    const-string/jumbo v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    move v4, v5

    .line 597
    sget v5, Lcom/google/appinventor/components/runtime/Texting;->receivingEnabled:I

    const/4 v6, 0x1

    if-le v5, v6, :cond_1

    move v5, v4

    const/4 v6, -0x1

    if-eq v5, v6, :cond_1

    .line 598
    move-object v5, v3

    const/4 v6, 0x0

    move v7, v4

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    move-object v6, v3

    move v7, v4

    const/4 v8, 0x1

    add-int/lit8 v7, v7, 0x1

    .line 599
    invoke-virtual {v6, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    .line 598
    invoke-static {v5, v6}, Lcom/google/appinventor/components/runtime/Texting;->MessageReceived(Ljava/lang/String;Ljava/lang/String;)V

    .line 590
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 602
    :cond_2
    goto/16 :goto_0
.end method

.method private processPendingQueue()V
    .locals 9

    .prologue
    .line 398
    move-object v0, p0

    :goto_0
    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/Texting;->pendingQueue:Ljava/util/Queue;

    invoke-interface {v3}, Ljava/util/Queue;->size()I

    move-result v3

    if-eqz v3, :cond_0

    .line 399
    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/Texting;->pendingQueue:Ljava/util/Queue;

    invoke-interface {v3}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    .line 400
    move-object v1, v4

    const/4 v4, 0x0

    move-object v5, v1

    const-string/jumbo v6, ":::"

    invoke-virtual {v5, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    move-object v2, v3

    .line 401
    move-object v3, v1

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    const-string/jumbo v5, ":::"

    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    const/4 v5, 0x3

    add-int/lit8 v4, v4, 0x3

    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    move-object v1, v3

    .line 402
    const-string/jumbo v3, "Texting Component"

    new-instance v4, Ljava/lang/StringBuilder;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    const-string/jumbo v6, "Sending queued message "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v5, v2

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v5, v1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 403
    new-instance v3, Lcom/google/appinventor/components/runtime/Texting$b;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    move-object v5, v0

    invoke-direct {v4, v5}, Lcom/google/appinventor/components/runtime/Texting$b;-><init>(Lcom/google/appinventor/components/runtime/Texting;)V

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    const/4 v6, 0x0

    move-object v7, v2

    aput-object v7, v5, v6

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    const/4 v6, 0x1

    move-object v7, v1

    aput-object v7, v5, v6

    invoke-virtual {v3, v4}, Lcom/google/appinventor/components/runtime/Texting$b;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object v3

    .line 404
    goto :goto_0

    .line 405
    :cond_0
    return-void
.end method

.method private requestReceiveSmsPermission(Ljava/lang/String;)V
    .locals 8

    .prologue
    .line 1044
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/Texting;->form:Lcom/google/appinventor/components/runtime/Form;

    new-instance v3, Lcom/google/appinventor/components/runtime/Texting$3;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move-object v5, v0

    move-object v6, v1

    invoke-direct {v4, v5, v6}, Lcom/google/appinventor/components/runtime/Texting$3;-><init>(Lcom/google/appinventor/components/runtime/Texting;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/google/appinventor/components/runtime/Form;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1061
    return-void
.end method

.method private retrieveCachedMessages()[Ljava/lang/String;
    .locals 6

    .prologue
    .line 610
    move-object v0, p0

    const-string/jumbo v2, "Texting Component"

    const-string/jumbo v3, "Retrieving cached messages"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 613
    move-object v2, v0

    :try_start_0
    iget-object v2, v2, Lcom/google/appinventor/components/runtime/Texting;->form:Lcom/google/appinventor/components/runtime/Form;

    const-string/jumbo v3, "textingmsgcache"

    invoke-static {v2, v3}, Lcom/google/appinventor/components/runtime/util/FileUtil;->readFile(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;)[B

    move-result-object v2

    move-object v1, v2

    .line 614
    new-instance v2, Ljava/lang/String;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v1

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>([B)V

    move-object v1, v2

    .line 615
    sget-object v2, Lcom/google/appinventor/components/runtime/Texting;->activity:Landroid/app/Activity;

    const-string/jumbo v3, "textingmsgcache"

    invoke-virtual {v2, v3}, Landroid/app/Activity;->deleteFile(Ljava/lang/String;)Z

    move-result v2

    .line 616
    const/4 v2, 0x0

    sput v2, Lcom/google/appinventor/components/runtime/Texting;->messagesCached:I

    .line 617
    const-string/jumbo v2, "Texting Component"

    const-string/jumbo v3, "Retrieved cache "

    move-object v4, v1

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    .line 624
    .line 625
    move-object v2, v1

    const-string/jumbo v3, "\u0001"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 626
    move-object v0, v2

    :goto_0
    return-object v0

    .line 619
    :catch_0
    move-exception v2

    const-string/jumbo v2, "Texting Component"

    const-string/jumbo v3, "No Cache file found -- this is not (usually) an error"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 620
    const/4 v2, 0x0

    move-object v0, v2

    goto :goto_0

    .line 622
    :catch_1
    move-exception v2

    const-string/jumbo v2, "Texting Component"

    const-string/jumbo v3, "I/O Error reading from cache file"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 623
    const/4 v2, 0x0

    move-object v0, v2

    goto :goto_0
.end method

.method private sendViaSms(Ljava/lang/String;)V
    .locals 13

    .prologue
    .line 992
    move-object v0, p0

    move-object v1, p1

    const-string/jumbo v5, "Texting Component"

    const-string/jumbo v6, "Sending via built-in Sms"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    .line 995
    move-object v5, v0

    iget-boolean v5, v5, Lcom/google/appinventor/components/runtime/Texting;->havePermission:Z

    if-nez v5, :cond_0

    .line 996
    move-object v5, v0

    iget-object v5, v5, Lcom/google/appinventor/components/runtime/Texting;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v5}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v5

    move-object v2, v5

    .line 997
    move-object v5, v0

    move-object v3, v5

    .line 998
    move-object v5, v2

    new-instance v6, Lcom/google/appinventor/components/runtime/Texting$1;

    move-object v12, v6

    move-object v6, v12

    move-object v7, v12

    move-object v8, v0

    move-object v9, v2

    move-object v10, v3

    move-object v11, v1

    invoke-direct {v7, v8, v9, v10, v11}, Lcom/google/appinventor/components/runtime/Texting$1;-><init>(Lcom/google/appinventor/components/runtime/Texting;Lcom/google/appinventor/components/runtime/Form;Lcom/google/appinventor/components/runtime/Texting;Ljava/lang/String;)V

    invoke-virtual {v5, v6}, Lcom/google/appinventor/components/runtime/Form;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1015
    .line 1041
    :goto_0
    return-void

    .line 1018
    :cond_0
    move-object v5, v0

    iget-object v5, v5, Lcom/google/appinventor/components/runtime/Texting;->smsManager:Landroid/telephony/SmsManager;

    move-object v6, v0

    iget-object v6, v6, Lcom/google/appinventor/components/runtime/Texting;->message:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/telephony/SmsManager;->divideMessage(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v5

    move-object v12, v5

    move-object v5, v12

    move-object v6, v12

    .line 1019
    move-object v2, v6

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    move v3, v5

    .line 1020
    new-instance v5, Ljava/util/ArrayList;

    move-object v12, v5

    move-object v5, v12

    move-object v6, v12

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    move-object v1, v5

    .line 1021
    const/4 v5, 0x0

    move v4, v5

    :goto_1
    move v5, v4

    move v6, v3

    if-ge v5, v6, :cond_1

    .line 1022
    move-object v5, v1

    sget-object v6, Lcom/google/appinventor/components/runtime/Texting;->activity:Landroid/app/Activity;

    const/4 v7, 0x0

    new-instance v8, Landroid/content/Intent;

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    const-string/jumbo v10, "SMS_SENT"

    invoke-direct {v9, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v9, 0x0

    invoke-static {v6, v7, v8, v9}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v5

    .line 1021
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 1025
    :cond_1
    new-instance v5, Lcom/google/appinventor/components/runtime/Texting$2;

    move-object v12, v5

    move-object v5, v12

    move-object v6, v12

    move-object v7, v0

    invoke-direct {v6, v7}, Lcom/google/appinventor/components/runtime/Texting$2;-><init>(Lcom/google/appinventor/components/runtime/Texting;)V

    move-object v4, v5

    .line 1039
    sget-object v5, Lcom/google/appinventor/components/runtime/Texting;->activity:Landroid/app/Activity;

    move-object v6, v4

    new-instance v7, Landroid/content/IntentFilter;

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    const-string/jumbo v9, "SMS_SENT"

    invoke-direct {v8, v9}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v6, v7}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v5

    .line 1040
    move-object v5, v0

    iget-object v5, v5, Lcom/google/appinventor/components/runtime/Texting;->smsManager:Landroid/telephony/SmsManager;

    move-object v6, v0

    iget-object v6, v6, Lcom/google/appinventor/components/runtime/Texting;->phoneNumber:Ljava/lang/String;

    const/4 v7, 0x0

    move-object v8, v2

    move-object v9, v1

    const/4 v10, 0x0

    invoke-virtual/range {v5 .. v10}, Landroid/telephony/SmsManager;->sendMultipartTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 1041
    goto :goto_0
.end method


# virtual methods
.method public GoogleVoiceEnabled(Z)V
    .locals 7
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "False"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/UsesBroadcastReceivers;
        receivers = {
            .subannotation Lcom/google/appinventor/components/annotations/androidmanifest/ReceiverElement;
                intentFilters = {
                    .subannotation Lcom/google/appinventor/components/annotations/androidmanifest/IntentFilterElement;
                        actionElements = {
                            .subannotation Lcom/google/appinventor/components/annotations/androidmanifest/ActionElement;
                                name = "com.google.android.apps.googlevoice.SMS_RECEIVED"
                            .end subannotation
                        }
                    .end subannotation
                }
                name = "com.google.appinventor.components.runtime.util.SmsBroadcastReceiver"
            .end subannotation
        }
    .end annotation

    .prologue
    .line 464
    move-object v0, p0

    move v1, p1

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v4, 0x5

    if-lt v3, v4, :cond_0

    .line 465
    move-object v3, v0

    move v4, v1

    iput-boolean v4, v3, Lcom/google/appinventor/components/runtime/Texting;->googleVoiceEnabled:Z

    .line 466
    sget-object v3, Lcom/google/appinventor/components/runtime/Texting;->activity:Landroid/app/Activity;

    const-string/jumbo v4, "TextingState"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 467
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    .line 468
    move-object v2, v4

    const-string/jumbo v4, "gvenabled"

    move v5, v1

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    .line 469
    move-object v3, v2

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v3

    .line 470
    .line 473
    :goto_0
    return-void

    .line 471
    :cond_0
    sget-object v3, Lcom/google/appinventor/components/runtime/Texting;->activity:Landroid/app/Activity;

    const-string/jumbo v4, "Sorry, your phone\'s system does not support this option."

    const/4 v5, 0x1

    invoke-static {v3, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 473
    goto :goto_0
.end method

.method public GoogleVoiceEnabled()Z
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "If true, then SendMessage will attempt to send messages over Wifi using Google Voice.  This requires that the Google Voice app must be installed and set up on the phone or tablet, with a Google Voice account.  If GoogleVoiceEnabled is false, the device must have phone and texting service in order to send or receive messages with this component."
    .end annotation

    .prologue
    .line 443
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Lcom/google/appinventor/components/runtime/Texting;->googleVoiceEnabled:Z

    move v0, v1

    return v0
.end method

.method public Initialize()V
    .locals 3

    .prologue
    .line 277
    move-object v0, p0

    sget v1, Lcom/google/appinventor/components/runtime/Texting;->receivingEnabled:I

    const/4 v2, 0x1

    if-le v1, v2, :cond_0

    move-object v1, v0

    iget-boolean v1, v1, Lcom/google/appinventor/components/runtime/Texting;->haveReceivePermission:Z

    if-nez v1, :cond_0

    .line 279
    move-object v1, v0

    const-string/jumbo v2, "Initialize"

    invoke-direct {v1, v2}, Lcom/google/appinventor/components/runtime/Texting;->requestReceiveSmsPermission(Ljava/lang/String;)V

    .line 281
    :cond_0
    return-void
.end method

.method public Message()Ljava/lang/String;
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 329
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/Texting;->message:Ljava/lang/String;

    move-object v0, v1

    return-object v0
.end method

.method public Message(Ljava/lang/String;)V
    .locals 5
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = ""
        editorType = "string"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "The message that will be sent when the SendMessage method is called."
    .end annotation

    .prologue
    .line 320
    move-object v0, p0

    move-object v1, p1

    const-string/jumbo v2, "Texting Component"

    const-string/jumbo v3, "Message set: "

    move-object v4, v1

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 321
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/Texting;->message:Ljava/lang/String;

    .line 322
    return-void
.end method

.method public PhoneNumber()Ljava/lang/String;
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "The number that the message will be sent to when the SendMessage method is called. The number is a text string with the specified digits (e.g., 6505551212).  Dashes, dots, and parentheses may be included (e.g., (650)-555-1212) but will be ignored; spaces should not be included."
    .end annotation

    .prologue
    .line 308
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/Texting;->phoneNumber:Ljava/lang/String;

    move-object v0, v1

    return-object v0
.end method

.method public PhoneNumber(Ljava/lang/String;)V
    .locals 5
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = ""
        editorType = "string"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .prologue
    .line 291
    move-object v0, p0

    move-object v1, p1

    const-string/jumbo v2, "Texting Component"

    const-string/jumbo v3, "PhoneNumber set: "

    move-object v4, v1

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 292
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/Texting;->phoneNumber:Ljava/lang/String;

    .line 293
    return-void
.end method

.method public ReceivingEnabled()I
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "If set to 1 (OFF) no messages will be received.  If set to 2 (FOREGROUND) or3 (ALWAYS) the component will respond to messages if it is running. If the app is not running then the message will be discarded if set to 2 (FOREGROUND). If set to 3 (ALWAYS) and the app is not running the phone will show a notification.  Selecting the notification will bring up the app and signal the MessageReceived event.  Messages received when the app is dormant will be queued, and so several MessageReceived events might appear when the app awakens.  As an app developer, it would be a good idea to give your users control over this property, so they can make their phones ignore text messages when your app is installed."
    .end annotation

    .prologue
    .line 496
    move-object v0, p0

    sget v1, Lcom/google/appinventor/components/runtime/Texting;->receivingEnabled:I

    move v0, v1

    return v0
.end method

.method public ReceivingEnabled(I)V
    .locals 12
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        alwaysSend = true
        defaultValue = "1"
        editorType = "text_receiving"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/UsesBroadcastReceivers;
        receivers = {
            .subannotation Lcom/google/appinventor/components/annotations/androidmanifest/ReceiverElement;
                intentFilters = {
                    .subannotation Lcom/google/appinventor/components/annotations/androidmanifest/IntentFilterElement;
                        actionElements = {
                            .subannotation Lcom/google/appinventor/components/annotations/androidmanifest/ActionElement;
                                name = "android.provider.Telephony.SMS_RECEIVED"
                            .end subannotation
                        }
                    .end subannotation
                }
                name = "com.google.appinventor.components.runtime.util.SmsBroadcastReceiver"
            .end subannotation
        }
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/UsesPermissions;
        value = {
            "android.permission.RECEIVE_SMS"
        }
    .end annotation

    .prologue
    .line 520
    move-object v0, p0

    move v1, p1

    move v3, v1

    if-lez v3, :cond_0

    move v3, v1

    const/4 v4, 0x3

    if-le v3, v4, :cond_1

    .line 522
    :cond_0
    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/Texting;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v3}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v3

    move-object v4, v0

    const-string/jumbo v5, "Texting"

    const/16 v6, 0x6a5

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    const/4 v9, 0x0

    move v10, v1

    .line 523
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    .line 522
    invoke-virtual {v3, v4, v5, v6, v7}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 524
    .line 536
    :goto_0
    return-void

    .line 527
    :cond_1
    move v3, v1

    sput v3, Lcom/google/appinventor/components/runtime/Texting;->receivingEnabled:I

    .line 528
    sget-object v3, Lcom/google/appinventor/components/runtime/Texting;->activity:Landroid/app/Activity;

    const-string/jumbo v4, "TextingState"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 529
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    move-object v11, v3

    move-object v3, v11

    move-object v4, v11

    .line 530
    move-object v2, v4

    const-string/jumbo v4, "receiving2"

    move v5, v1

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    .line 531
    move-object v3, v2

    const-string/jumbo v4, "receiving"

    invoke-interface {v3, v4}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    .line 532
    move-object v3, v2

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v3

    .line 533
    move v3, v1

    const/4 v4, 0x1

    if-le v3, v4, :cond_2

    move-object v3, v0

    iget-boolean v3, v3, Lcom/google/appinventor/components/runtime/Texting;->haveReceivePermission:Z

    if-nez v3, :cond_2

    .line 534
    move-object v3, v0

    const-string/jumbo v4, "ReceivingEnabled"

    invoke-direct {v3, v4}, Lcom/google/appinventor/components/runtime/Texting;->requestReceiveSmsPermission(Ljava/lang/String;)V

    .line 536
    :cond_2
    goto :goto_0
.end method

.method public SendMessage()V
    .locals 8
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
    .end annotation

    .prologue
    .line 337
    move-object v0, p0

    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/Texting;->phoneNumber:Ljava/lang/String;

    move-object v1, v3

    .line 338
    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/Texting;->message:Ljava/lang/String;

    move-object v2, v3

    .line 340
    const-string/jumbo v3, "smsto:"

    move-object v4, v1

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    move-object v1, v3

    .line 341
    new-instance v3, Landroid/content/Intent;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const-string/jumbo v5, "android.intent.action.SENDTO"

    move-object v6, v1

    invoke-direct {v4, v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    .line 342
    move-object v1, v4

    const-string/jumbo v4, "sms_body"

    move-object v5, v2

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    .line 343
    move-object v3, v1

    move-object v4, v0

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/Texting;->form:Lcom/google/appinventor/components/runtime/Form;

    invoke-virtual {v4}, Lcom/google/appinventor/components/runtime/Form;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 344
    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/Texting;->form:Lcom/google/appinventor/components/runtime/Form;

    move-object v4, v0

    const v5, 0x54455854

    invoke-virtual {v3, v4, v5}, Lcom/google/appinventor/components/runtime/Form;->registerForActivityResult(Lcom/google/appinventor/components/runtime/ActivityResultListener;I)V

    .line 345
    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/Texting;->form:Lcom/google/appinventor/components/runtime/Form;

    move-object v4, v1

    const v5, 0x54455854

    invoke-virtual {v3, v4, v5}, Lcom/google/appinventor/components/runtime/Form;->startActivityForResult(Landroid/content/Intent;I)V

    .line 347
    :cond_0
    return-void
.end method

.method public SendMessageDirect()V
    .locals 9
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/UsesPermissions;
        value = {
            "android.permission.SEND_SMS",
            "android.permission.READ_PHONE_STATE"
        }
    .end annotation

    .prologue
    .line 355
    move-object v0, p0

    const-string/jumbo v3, "Texting Component"

    new-instance v4, Ljava/lang/StringBuilder;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    const-string/jumbo v6, "Sending message "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v5, v0

    iget-object v5, v5, Lcom/google/appinventor/components/runtime/Texting;->message:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v5, v0

    iget-object v5, v5, Lcom/google/appinventor/components/runtime/Texting;->phoneNumber:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 358
    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/Texting;->phoneNumber:Ljava/lang/String;

    move-object v1, v3

    .line 359
    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/Texting;->message:Ljava/lang/String;

    move-object v2, v3

    .line 362
    move-object v3, v0

    iget-boolean v3, v3, Lcom/google/appinventor/components/runtime/Texting;->googleVoiceEnabled:Z

    if-eqz v3, :cond_3

    .line 365
    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/Texting;->authToken:Ljava/lang/String;

    if-nez v3, :cond_2

    .line 366
    const-string/jumbo v3, "Texting Component"

    new-instance v4, Ljava/lang/StringBuilder;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    const-string/jumbo v6, "Need to get an authToken -- enqueing "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v5, v1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v5, v2

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 367
    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/Texting;->pendingQueue:Ljava/util/Queue;

    new-instance v4, Ljava/lang/StringBuilder;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object v5, v1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ":::"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v5, v2

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    move-result v3

    .line 370
    if-nez v3, :cond_0

    .line 371
    sget-object v3, Lcom/google/appinventor/components/runtime/Texting;->activity:Landroid/app/Activity;

    const-string/jumbo v4, "Pending message queue full. Can\'t send message"

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 372
    .line 392
    :goto_0
    return-void

    .line 378
    :cond_0
    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/Texting;->pendingQueue:Ljava/util/Queue;

    invoke-interface {v3}, Ljava/util/Queue;->size()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    .line 379
    new-instance v3, Lcom/google/appinventor/components/runtime/Texting$a;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    move-object v5, v0

    invoke-direct {v4, v5}, Lcom/google/appinventor/components/runtime/Texting$a;-><init>(Lcom/google/appinventor/components/runtime/Texting;)V

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Void;

    invoke-virtual {v3, v4}, Lcom/google/appinventor/components/runtime/Texting$a;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object v3

    .line 382
    :cond_1
    goto :goto_0

    .line 383
    :cond_2
    const-string/jumbo v3, "Texting Component"

    const-string/jumbo v4, "Creating AsyncSendMessage"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 384
    new-instance v3, Lcom/google/appinventor/components/runtime/Texting$b;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    move-object v5, v0

    invoke-direct {v4, v5}, Lcom/google/appinventor/components/runtime/Texting$b;-><init>(Lcom/google/appinventor/components/runtime/Texting;)V

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    const/4 v6, 0x0

    move-object v7, v1

    aput-object v7, v5, v6

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    const/4 v6, 0x1

    move-object v7, v2

    aput-object v7, v5, v6

    invoke-virtual {v3, v4}, Lcom/google/appinventor/components/runtime/Texting$b;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object v3

    goto :goto_0

    .line 389
    :cond_3
    const-string/jumbo v3, "Texting Component"

    const-string/jumbo v4, "Sending via SMS"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 390
    move-object v3, v0

    const-string/jumbo v4, "SendMessage"

    invoke-direct {v3, v4}, Lcom/google/appinventor/components/runtime/Texting;->sendViaSms(Ljava/lang/String;)V

    .line 392
    goto :goto_0
.end method

.method public onDelete()V
    .locals 3

    .prologue
    .line 1175
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/Texting;->form:Lcom/google/appinventor/components/runtime/Form;

    move-object v2, v0

    invoke-virtual {v1, v2}, Lcom/google/appinventor/components/runtime/Form;->unregisterForActivityResult(Lcom/google/appinventor/components/runtime/ActivityResultListener;)V

    .line 1176
    return-void
.end method

.method public onInitialize()V
    .locals 3

    .prologue
    .line 267
    move-object v0, p0

    const-string/jumbo v1, "Texting Component"

    const-string/jumbo v2, "onInitialize()"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 268
    move-object v1, v0

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/google/appinventor/components/runtime/Texting;->isInitialized:Z

    .line 269
    const/4 v1, 0x1

    sput-boolean v1, Lcom/google/appinventor/components/runtime/Texting;->isRunning:Z

    .line 270
    move-object v1, v0

    invoke-direct {v1}, Lcom/google/appinventor/components/runtime/Texting;->processCachedMessages()V

    .line 271
    sget-object v1, Lcom/google/appinventor/components/runtime/Texting;->activity:Landroid/app/Activity;

    const-string/jumbo v2, "notification"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    .line 272
    const/16 v2, 0x21c7

    invoke-virtual {v1, v2}, Landroid/app/NotificationManager;->cancel(I)V

    .line 273
    return-void
.end method

.method public onPause()V
    .locals 3

    .prologue
    .line 664
    move-object v0, p0

    const-string/jumbo v1, "Texting Component"

    const-string/jumbo v2, "onPause()"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 665
    const/4 v1, 0x0

    sput-boolean v1, Lcom/google/appinventor/components/runtime/Texting;->isRunning:Z

    .line 666
    return-void
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 650
    move-object v0, p0

    const-string/jumbo v1, "Texting Component"

    const-string/jumbo v2, "onResume()"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 651
    const/4 v1, 0x1

    sput-boolean v1, Lcom/google/appinventor/components/runtime/Texting;->isRunning:Z

    .line 652
    move-object v1, v0

    iget-boolean v1, v1, Lcom/google/appinventor/components/runtime/Texting;->isInitialized:Z

    if-eqz v1, :cond_0

    .line 653
    move-object v1, v0

    invoke-direct {v1}, Lcom/google/appinventor/components/runtime/Texting;->processCachedMessages()V

    .line 654
    sget-object v1, Lcom/google/appinventor/components/runtime/Texting;->activity:Landroid/app/Activity;

    const-string/jumbo v2, "notification"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    .line 655
    const/16 v2, 0x21c7

    invoke-virtual {v1, v2}, Landroid/app/NotificationManager;->cancel(I)V

    .line 657
    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 6

    .prologue
    .line 1166
    move-object v0, p0

    sget-object v2, Lcom/google/appinventor/components/runtime/Texting;->activity:Landroid/app/Activity;

    const-string/jumbo v3, "TextingState"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 1167
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    .line 1168
    move-object v1, v3

    const-string/jumbo v3, "receiving2"

    sget v4, Lcom/google/appinventor/components/runtime/Texting;->receivingEnabled:I

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 1169
    move-object v2, v1

    const-string/jumbo v3, "gvenabled"

    move-object v4, v0

    iget-boolean v4, v4, Lcom/google/appinventor/components/runtime/Texting;->googleVoiceEnabled:Z

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 1170
    move-object v2, v1

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v2

    .line 1171
    return-void
.end method

.method public resultReturned(IILandroid/content/Intent;)V
    .locals 11

    .prologue
    .line 707
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move v4, v1

    const v5, 0x54455854

    if-ne v4, v5, :cond_0

    .line 708
    move-object v4, v0

    move-object v10, v4

    move-object v4, v10

    move-object v5, v10

    iget-object v5, v5, Lcom/google/appinventor/components/runtime/Texting;->form:Lcom/google/appinventor/components/runtime/Form;

    const/4 v6, 0x0

    move v7, v2

    move-object v8, v3

    if-nez v8, :cond_1

    const-string/jumbo v8, ""

    :goto_0
    invoke-direct {v4, v5, v6, v7, v8}, Lcom/google/appinventor/components/runtime/Texting;->handleSentMessage(Landroid/content/Context;Landroid/content/BroadcastReceiver;ILjava/lang/String;)V

    .line 710
    move-object v4, v0

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/Texting;->form:Lcom/google/appinventor/components/runtime/Form;

    move-object v5, v0

    invoke-virtual {v4, v5}, Lcom/google/appinventor/components/runtime/Form;->unregisterForActivityResult(Lcom/google/appinventor/components/runtime/ActivityResultListener;)V

    .line 712
    :cond_0
    return-void

    .line 708
    :cond_1
    move-object v8, v3

    const-string/jumbo v9, "sms_body"

    .line 709
    invoke-virtual {v8, v9}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    goto :goto_0
.end method

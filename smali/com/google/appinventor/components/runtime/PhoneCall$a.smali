.class final Lcom/google/appinventor/components/runtime/PhoneCall$a;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/appinventor/components/runtime/PhoneCall;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field private synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/PhoneCall;

.field private ik13O8j78hPb27XeipAJHUcJmdHxYMJFw4gYbTGvLKIOs7SX1F7x61gocQ17TlNc:Ljava/lang/String;

.field private vSp02fkBXgM8EI0gm0rKWXHQ6wdQINJBQuAtCR15YU8g4XNqVKV8r32SYxkQYxkq:I


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/PhoneCall;)V
    .locals 4

    .prologue
    .line 230
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/PhoneCall$a;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/PhoneCall;

    move-object v2, v0

    invoke-direct {v2}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 231
    move-object v2, v0

    const/4 v3, 0x0

    iput v3, v2, Lcom/google/appinventor/components/runtime/PhoneCall$a;->vSp02fkBXgM8EI0gm0rKWXHQ6wdQINJBQuAtCR15YU8g4XNqVKV8r32SYxkQYxkq:I

    .line 232
    move-object v2, v0

    const-string/jumbo v3, ""

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/PhoneCall$a;->ik13O8j78hPb27XeipAJHUcJmdHxYMJFw4gYbTGvLKIOs7SX1F7x61gocQ17TlNc:Ljava/lang/String;

    .line 233
    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6

    .prologue
    .line 237
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v2

    invoke-virtual {v3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    move-object v1, v3

    .line 238
    const-string/jumbo v3, "android.intent.action.PHONE_STATE"

    move-object v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 239
    move-object v3, v2

    const-string/jumbo v4, "state"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object v1, v3

    .line 240
    sget-object v3, Landroid/telephony/TelephonyManager;->EXTRA_STATE_RINGING:Ljava/lang/String;

    move-object v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 242
    move-object v3, v0

    const/4 v4, 0x1

    iput v4, v3, Lcom/google/appinventor/components/runtime/PhoneCall$a;->vSp02fkBXgM8EI0gm0rKWXHQ6wdQINJBQuAtCR15YU8g4XNqVKV8r32SYxkQYxkq:I

    .line 243
    move-object v3, v0

    move-object v4, v2

    const-string/jumbo v5, "incoming_number"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/google/appinventor/components/runtime/PhoneCall$a;->ik13O8j78hPb27XeipAJHUcJmdHxYMJFw4gYbTGvLKIOs7SX1F7x61gocQ17TlNc:Ljava/lang/String;

    .line 244
    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/PhoneCall$a;->ik13O8j78hPb27XeipAJHUcJmdHxYMJFw4gYbTGvLKIOs7SX1F7x61gocQ17TlNc:Ljava/lang/String;

    if-nez v3, :cond_0

    .line 247
    .line 278
    :goto_0
    return-void

    .line 249
    :cond_0
    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/PhoneCall$a;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/PhoneCall;

    const/4 v4, 0x1

    move-object v5, v0

    iget-object v5, v5, Lcom/google/appinventor/components/runtime/PhoneCall$a;->ik13O8j78hPb27XeipAJHUcJmdHxYMJFw4gYbTGvLKIOs7SX1F7x61gocQ17TlNc:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lcom/google/appinventor/components/runtime/PhoneCall;->PhoneCallStarted(ILjava/lang/String;)V

    goto :goto_0

    .line 250
    :cond_1
    sget-object v3, Landroid/telephony/TelephonyManager;->EXTRA_STATE_OFFHOOK:Ljava/lang/String;

    move-object v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 252
    move-object v3, v0

    iget v3, v3, Lcom/google/appinventor/components/runtime/PhoneCall$a;->vSp02fkBXgM8EI0gm0rKWXHQ6wdQINJBQuAtCR15YU8g4XNqVKV8r32SYxkQYxkq:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_4

    .line 254
    move-object v3, v0

    const/4 v4, 0x3

    iput v4, v3, Lcom/google/appinventor/components/runtime/PhoneCall$a;->vSp02fkBXgM8EI0gm0rKWXHQ6wdQINJBQuAtCR15YU8g4XNqVKV8r32SYxkQYxkq:I

    .line 255
    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/PhoneCall$a;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/PhoneCall;

    move-object v4, v0

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/PhoneCall$a;->ik13O8j78hPb27XeipAJHUcJmdHxYMJFw4gYbTGvLKIOs7SX1F7x61gocQ17TlNc:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/google/appinventor/components/runtime/PhoneCall;->IncomingCallAnswered(Ljava/lang/String;)V

    goto :goto_0

    .line 257
    :cond_2
    sget-object v3, Landroid/telephony/TelephonyManager;->EXTRA_STATE_IDLE:Ljava/lang/String;

    move-object v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 259
    move-object v3, v0

    iget v3, v3, Lcom/google/appinventor/components/runtime/PhoneCall$a;->vSp02fkBXgM8EI0gm0rKWXHQ6wdQINJBQuAtCR15YU8g4XNqVKV8r32SYxkQYxkq:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_5

    .line 261
    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/PhoneCall$a;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/PhoneCall;

    const/4 v4, 0x1

    move-object v5, v0

    iget-object v5, v5, Lcom/google/appinventor/components/runtime/PhoneCall$a;->ik13O8j78hPb27XeipAJHUcJmdHxYMJFw4gYbTGvLKIOs7SX1F7x61gocQ17TlNc:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lcom/google/appinventor/components/runtime/PhoneCall;->PhoneCallEnded(ILjava/lang/String;)V

    .line 269
    :cond_3
    :goto_1
    move-object v3, v0

    const/4 v4, 0x0

    iput v4, v3, Lcom/google/appinventor/components/runtime/PhoneCall$a;->vSp02fkBXgM8EI0gm0rKWXHQ6wdQINJBQuAtCR15YU8g4XNqVKV8r32SYxkQYxkq:I

    .line 270
    move-object v3, v0

    const-string/jumbo v4, ""

    iput-object v4, v3, Lcom/google/appinventor/components/runtime/PhoneCall$a;->ik13O8j78hPb27XeipAJHUcJmdHxYMJFw4gYbTGvLKIOs7SX1F7x61gocQ17TlNc:Ljava/lang/String;

    .line 272
    :cond_4
    goto :goto_0

    .line 262
    :cond_5
    move-object v3, v0

    iget v3, v3, Lcom/google/appinventor/components/runtime/PhoneCall$a;->vSp02fkBXgM8EI0gm0rKWXHQ6wdQINJBQuAtCR15YU8g4XNqVKV8r32SYxkQYxkq:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_6

    .line 264
    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/PhoneCall$a;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/PhoneCall;

    const/4 v4, 0x2

    move-object v5, v0

    iget-object v5, v5, Lcom/google/appinventor/components/runtime/PhoneCall$a;->ik13O8j78hPb27XeipAJHUcJmdHxYMJFw4gYbTGvLKIOs7SX1F7x61gocQ17TlNc:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lcom/google/appinventor/components/runtime/PhoneCall;->PhoneCallEnded(ILjava/lang/String;)V

    goto :goto_1

    .line 265
    :cond_6
    move-object v3, v0

    iget v3, v3, Lcom/google/appinventor/components/runtime/PhoneCall$a;->vSp02fkBXgM8EI0gm0rKWXHQ6wdQINJBQuAtCR15YU8g4XNqVKV8r32SYxkQYxkq:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_3

    .line 267
    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/PhoneCall$a;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/PhoneCall;

    const/4 v4, 0x3

    move-object v5, v0

    iget-object v5, v5, Lcom/google/appinventor/components/runtime/PhoneCall$a;->ik13O8j78hPb27XeipAJHUcJmdHxYMJFw4gYbTGvLKIOs7SX1F7x61gocQ17TlNc:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lcom/google/appinventor/components/runtime/PhoneCall;->PhoneCallEnded(ILjava/lang/String;)V

    goto :goto_1

    .line 272
    :cond_7
    const-string/jumbo v3, "android.intent.action.NEW_OUTGOING_CALL"

    move-object v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 274
    move-object v3, v0

    const/4 v4, 0x2

    iput v4, v3, Lcom/google/appinventor/components/runtime/PhoneCall$a;->vSp02fkBXgM8EI0gm0rKWXHQ6wdQINJBQuAtCR15YU8g4XNqVKV8r32SYxkQYxkq:I

    .line 275
    move-object v3, v0

    move-object v4, v2

    const-string/jumbo v5, "android.intent.extra.PHONE_NUMBER"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/google/appinventor/components/runtime/PhoneCall$a;->ik13O8j78hPb27XeipAJHUcJmdHxYMJFw4gYbTGvLKIOs7SX1F7x61gocQ17TlNc:Ljava/lang/String;

    .line 276
    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/PhoneCall$a;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/PhoneCall;

    const/4 v4, 0x2

    move-object v5, v0

    iget-object v5, v5, Lcom/google/appinventor/components/runtime/PhoneCall$a;->ik13O8j78hPb27XeipAJHUcJmdHxYMJFw4gYbTGvLKIOs7SX1F7x61gocQ17TlNc:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lcom/google/appinventor/components/runtime/PhoneCall;->PhoneCallStarted(ILjava/lang/String;)V

    .line 278
    :cond_8
    goto/16 :goto_0
.end method

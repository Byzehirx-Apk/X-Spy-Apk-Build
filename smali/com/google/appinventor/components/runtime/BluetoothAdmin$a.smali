.class final Lcom/google/appinventor/components/runtime/BluetoothAdmin$a;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/appinventor/components/runtime/BluetoothAdmin;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/appinventor/components/runtime/BluetoothAdmin$a$c;,
        Lcom/google/appinventor/components/runtime/BluetoothAdmin$a$a;,
        Lcom/google/appinventor/components/runtime/BluetoothAdmin$a$b;
    }
.end annotation


# instance fields
.field final synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/BluetoothAdmin;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/BluetoothAdmin;)V
    .locals 4

    .prologue
    .line 79
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/BluetoothAdmin$a;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/BluetoothAdmin;

    move-object v2, v0

    invoke-direct {v2}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 80
    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9

    .prologue
    .line 110
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, v2

    invoke-virtual {v4}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    .line 111
    move-object v1, v5

    if-nez v4, :cond_0

    .line 112
    .line 1154
    :goto_0
    return-void

    .line 114
    :cond_0
    const/4 v4, -0x1

    move v3, v4

    move-object v4, v1

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    :cond_1
    :goto_1
    move v4, v3

    packed-switch v4, :pswitch_data_0

    .line 125
    :cond_2
    :goto_2
    goto :goto_0

    .line 114
    :sswitch_0
    move-object v4, v1

    const-string/jumbo v5, "android.bluetooth.device.action.FOUND"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v4, 0x0

    move v3, v4

    goto :goto_1

    :sswitch_1
    move-object v4, v1

    const-string/jumbo v5, "android.bluetooth.adapter.action.DISCOVERY_FINISHED"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v4, 0x1

    move v3, v4

    goto :goto_1

    :sswitch_2
    move-object v4, v1

    const-string/jumbo v5, "android.bluetooth.device.action.BOND_STATE_CHANGED"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v4, 0x2

    move v3, v4

    goto :goto_1

    .line 116
    :pswitch_0
    move-object v4, v0

    move-object v1, v4

    .line 1129
    move-object v4, v2

    const-string/jumbo v5, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Landroid/bluetooth/BluetoothDevice;

    move-object v3, v4

    .line 1130
    new-instance v4, Ljava/lang/StringBuilder;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object v5, v3

    invoke-virtual {v5}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v5, v3

    invoke-virtual {v5}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v2, v4

    .line 1131
    move-object v4, v3

    invoke-virtual {v4}, Landroid/bluetooth/BluetoothDevice;->getBondState()I

    move-result v4

    const/16 v5, 0xc

    if-eq v4, v5, :cond_3

    .line 1132
    move-object v4, v1

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/BluetoothAdmin$a;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/BluetoothAdmin;

    invoke-static {v4}, Lcom/google/appinventor/components/runtime/BluetoothAdmin;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T(Lcom/google/appinventor/components/runtime/BluetoothAdmin;)Ljava/util/List;

    move-result-object v4

    move-object v5, v2

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v4

    goto :goto_0

    .line 1134
    :cond_3
    move-object v4, v1

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/BluetoothAdmin$a;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/BluetoothAdmin;

    invoke-static {v4}, Lcom/google/appinventor/components/runtime/BluetoothAdmin;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/BluetoothAdmin;)Ljava/util/List;

    move-result-object v4

    move-object v5, v2

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v4

    .line 117
    goto/16 :goto_0

    .line 119
    :pswitch_1
    move-object v4, v0

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    .line 1139
    move-object v1, v5

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/BluetoothAdmin$a;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/BluetoothAdmin;

    invoke-static {v4}, Lcom/google/appinventor/components/runtime/BluetoothAdmin;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/BluetoothAdmin;)Ljava/util/List;

    move-result-object v4

    if-nez v4, :cond_4

    .line 1140
    move-object v4, v1

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/BluetoothAdmin$a;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/BluetoothAdmin;

    invoke-static {v4}, Lcom/google/appinventor/components/runtime/BluetoothAdmin;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/BluetoothAdmin;)Ljava/util/List;

    move-result-object v4

    const-string/jumbo v5, ""

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v4

    .line 1142
    :cond_4
    move-object v4, v1

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/BluetoothAdmin$a;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/BluetoothAdmin;

    invoke-static {v4}, Lcom/google/appinventor/components/runtime/BluetoothAdmin;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T(Lcom/google/appinventor/components/runtime/BluetoothAdmin;)Ljava/util/List;

    move-result-object v4

    if-nez v4, :cond_5

    .line 1143
    move-object v4, v1

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/BluetoothAdmin$a;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/BluetoothAdmin;

    invoke-static {v4}, Lcom/google/appinventor/components/runtime/BluetoothAdmin;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T(Lcom/google/appinventor/components/runtime/BluetoothAdmin;)Ljava/util/List;

    move-result-object v4

    const-string/jumbo v5, ""

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v4

    .line 1145
    :cond_5
    move-object v4, v1

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/BluetoothAdmin$a;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/BluetoothAdmin;

    invoke-static {v4}, Lcom/google/appinventor/components/runtime/BluetoothAdmin;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/BluetoothAdmin;)Landroid/app/Activity;

    move-result-object v4

    new-instance v5, Lcom/google/appinventor/components/runtime/BluetoothAdmin$a$b;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    move-object v7, v1

    invoke-direct {v6, v7}, Lcom/google/appinventor/components/runtime/BluetoothAdmin$a$b;-><init>(Lcom/google/appinventor/components/runtime/BluetoothAdmin$a;)V

    invoke-virtual {v4, v5}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1146
    move-object v4, v1

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/BluetoothAdmin$a;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/BluetoothAdmin;

    invoke-static {v4}, Lcom/google/appinventor/components/runtime/BluetoothAdmin;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/BluetoothAdmin;)V

    .line 120
    goto/16 :goto_0

    .line 122
    :pswitch_2
    move-object v4, v0

    move-object v1, v4

    .line 1150
    move-object v4, v2

    const-string/jumbo v5, "android.bluetooth.device.extra.BOND_STATE"

    const/high16 v6, -0x80000000

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    move v3, v4

    .line 1151
    move-object v4, v2

    const-string/jumbo v5, "android.bluetooth.device.extra.PREVIOUS_BOND_STATE"

    const/high16 v6, -0x80000000

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    move v2, v4

    .line 1152
    move v4, v3

    const/16 v5, 0xc

    if-ne v4, v5, :cond_6

    move v4, v2

    const/16 v5, 0xb

    if-ne v4, v5, :cond_6

    .line 1153
    move-object v4, v1

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/BluetoothAdmin$a;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/BluetoothAdmin;

    invoke-static {v4}, Lcom/google/appinventor/components/runtime/BluetoothAdmin;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/BluetoothAdmin;)Landroid/app/Activity;

    move-result-object v4

    new-instance v5, Lcom/google/appinventor/components/runtime/BluetoothAdmin$a$a;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    move-object v7, v1

    invoke-direct {v6, v7}, Lcom/google/appinventor/components/runtime/BluetoothAdmin$a$a;-><init>(Lcom/google/appinventor/components/runtime/BluetoothAdmin$a;)V

    invoke-virtual {v4, v5}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1154
    move-object v4, v1

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/BluetoothAdmin$a;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/BluetoothAdmin;

    invoke-static {v4}, Lcom/google/appinventor/components/runtime/BluetoothAdmin;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/BluetoothAdmin;)V

    goto/16 :goto_0

    .line 1155
    :cond_6
    move v4, v3

    const/16 v5, 0xa

    if-ne v4, v5, :cond_2

    move v4, v2

    const/16 v5, 0xc

    if-ne v4, v5, :cond_2

    .line 1156
    move-object v4, v1

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/BluetoothAdmin$a;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/BluetoothAdmin;

    invoke-static {v4}, Lcom/google/appinventor/components/runtime/BluetoothAdmin;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/BluetoothAdmin;)Landroid/app/Activity;

    move-result-object v4

    new-instance v5, Lcom/google/appinventor/components/runtime/BluetoothAdmin$a$c;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    move-object v7, v1

    invoke-direct {v6, v7}, Lcom/google/appinventor/components/runtime/BluetoothAdmin$a$c;-><init>(Lcom/google/appinventor/components/runtime/BluetoothAdmin$a;)V

    invoke-virtual {v4, v5}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1157
    move-object v4, v1

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/BluetoothAdmin$a;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/BluetoothAdmin;

    invoke-static {v4}, Lcom/google/appinventor/components/runtime/BluetoothAdmin;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/BluetoothAdmin;)V

    goto/16 :goto_2

    .line 114
    nop

    :sswitch_data_0
    .sparse-switch
        -0x6a269925 -> :sswitch_1
        0x459717c3 -> :sswitch_0
        0x7e2cc189 -> :sswitch_2
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

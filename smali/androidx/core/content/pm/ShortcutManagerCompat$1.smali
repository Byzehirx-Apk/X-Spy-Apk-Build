.class final Landroidx/core/content/pm/ShortcutManagerCompat$1;
.super Landroid/content/BroadcastReceiver;
.source "ShortcutManagerCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/core/content/pm/ShortcutManagerCompat;->requestPinShortcut(Landroid/content/Context;Landroidx/core/content/pm/ShortcutInfoCompat;Landroid/content/IntentSender;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$callback:Landroid/content/IntentSender;


# direct methods
.method constructor <init>(Landroid/content/IntentSender;)V
    .locals 4

    .prologue
    .line 108
    move-object v0, p0

    .local v0, "this":Landroidx/core/content/pm/ShortcutManagerCompat$1;
    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroidx/core/content/pm/ShortcutManagerCompat$1;->val$callback:Landroid/content/IntentSender;

    move-object v2, v0

    invoke-direct {v2}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 10

    .prologue
    .line 112
    move-object v0, p0

    .local v0, "this":Landroidx/core/content/pm/ShortcutManagerCompat$1;
    move-object v1, p1

    .local v1, "context":Landroid/content/Context;
    move-object v2, p2

    .local v2, "intent":Landroid/content/Intent;
    move-object v4, v0

    :try_start_0
    iget-object v4, v4, Landroidx/core/content/pm/ShortcutManagerCompat$1;->val$callback:Landroid/content/IntentSender;

    move-object v5, v1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Landroid/content/IntentSender;->sendIntent(Landroid/content/Context;ILandroid/content/Intent;Landroid/content/IntentSender$OnFinished;Landroid/os/Handler;)V
    :try_end_0
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 115
    .line 116
    :goto_0
    return-void

    .line 113
    :catch_0
    move-exception v4

    move-object v3, v4

    goto :goto_0
.end method

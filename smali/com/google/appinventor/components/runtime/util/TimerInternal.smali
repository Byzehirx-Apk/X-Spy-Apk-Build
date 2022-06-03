.class public final Lcom/google/appinventor/components/runtime/util/TimerInternal;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private enabled:Z

.field private handler:Landroid/os/Handler;

.field private hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/AlarmHandler;

.field private interval:I


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/AlarmHandler;ZI)V
    .locals 11

    .prologue
    .line 40
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, v0

    move-object v5, v1

    move v6, v2

    move v7, v3

    new-instance v8, Landroid/os/Handler;

    move-object v10, v8

    move-object v8, v10

    move-object v9, v10

    invoke-direct {v9}, Landroid/os/Handler;-><init>()V

    invoke-direct {v4, v5, v6, v7, v8}, Lcom/google/appinventor/components/runtime/util/TimerInternal;-><init>(Lcom/google/appinventor/components/runtime/AlarmHandler;ZILandroid/os/Handler;)V

    .line 41
    return-void
.end method

.method public constructor <init>(Lcom/google/appinventor/components/runtime/AlarmHandler;ZILandroid/os/Handler;)V
    .locals 10

    .prologue
    .line 55
    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    move-object v6, v1

    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    .line 56
    move-object v6, v1

    move-object v7, v5

    iput-object v7, v6, Lcom/google/appinventor/components/runtime/util/TimerInternal;->handler:Landroid/os/Handler;

    .line 57
    move-object v6, v1

    move-object v7, v2

    iput-object v7, v6, Lcom/google/appinventor/components/runtime/util/TimerInternal;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/AlarmHandler;

    .line 60
    move-object v6, v1

    move v7, v3

    iput-boolean v7, v6, Lcom/google/appinventor/components/runtime/util/TimerInternal;->enabled:Z

    .line 61
    move-object v6, v1

    move v7, v4

    iput v7, v6, Lcom/google/appinventor/components/runtime/util/TimerInternal;->interval:I

    .line 62
    move v6, v3

    if-eqz v6, :cond_0

    .line 63
    move-object v6, v5

    move-object v7, v1

    move v8, v4

    int-to-long v8, v8

    invoke-virtual {v6, v7, v8, v9}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    move-result v6

    .line 65
    :cond_0
    return-void
.end method


# virtual methods
.method public final Enabled(Z)V
    .locals 7

    .prologue
    .line 105
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget-boolean v2, v2, Lcom/google/appinventor/components/runtime/util/TimerInternal;->enabled:Z

    if-eqz v2, :cond_0

    .line 106
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/util/TimerInternal;->handler:Landroid/os/Handler;

    move-object v3, v0

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 109
    :cond_0
    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Lcom/google/appinventor/components/runtime/util/TimerInternal;->enabled:Z

    .line 111
    move v2, v1

    if-eqz v2, :cond_1

    .line 112
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/util/TimerInternal;->handler:Landroid/os/Handler;

    move-object v3, v0

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    iget v4, v4, Lcom/google/appinventor/components/runtime/util/TimerInternal;->interval:I

    int-to-long v4, v4

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    move-result v2

    .line 114
    :cond_1
    return-void
.end method

.method public final Enabled()Z
    .locals 2

    .prologue
    .line 96
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Lcom/google/appinventor/components/runtime/util/TimerInternal;->enabled:Z

    move v0, v1

    return v0
.end method

.method public final Interval()I
    .locals 2

    .prologue
    .line 73
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Lcom/google/appinventor/components/runtime/util/TimerInternal;->interval:I

    move v0, v1

    return v0
.end method

.method public final Interval(I)V
    .locals 6

    .prologue
    .line 82
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput v3, v2, Lcom/google/appinventor/components/runtime/util/TimerInternal;->interval:I

    .line 83
    move-object v2, v0

    iget-boolean v2, v2, Lcom/google/appinventor/components/runtime/util/TimerInternal;->enabled:Z

    if-eqz v2, :cond_0

    .line 84
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/util/TimerInternal;->handler:Landroid/os/Handler;

    move-object v3, v0

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 85
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/util/TimerInternal;->handler:Landroid/os/Handler;

    move-object v3, v0

    move v4, v1

    int-to-long v4, v4

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    move-result v2

    .line 87
    :cond_0
    return-void
.end method

.method public final run()V
    .locals 7

    .prologue
    .line 119
    move-object v1, p0

    move-object v2, v1

    iget-boolean v2, v2, Lcom/google/appinventor/components/runtime/util/TimerInternal;->enabled:Z

    if-eqz v2, :cond_0

    .line 120
    move-object v2, v1

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/util/TimerInternal;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/AlarmHandler;

    invoke-interface {v2}, Lcom/google/appinventor/components/runtime/AlarmHandler;->alarm()V

    .line 124
    move-object v2, v1

    iget-boolean v2, v2, Lcom/google/appinventor/components/runtime/util/TimerInternal;->enabled:Z

    if-eqz v2, :cond_0

    .line 125
    move-object v2, v1

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/util/TimerInternal;->handler:Landroid/os/Handler;

    move-object v3, v1

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    iget v4, v4, Lcom/google/appinventor/components/runtime/util/TimerInternal;->interval:I

    int-to-long v4, v4

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    move-result v2

    .line 128
    :cond_0
    return-void
.end method

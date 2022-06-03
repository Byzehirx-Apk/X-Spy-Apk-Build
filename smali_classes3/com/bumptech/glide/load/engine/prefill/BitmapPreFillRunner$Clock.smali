.class Lcom/bumptech/glide/load/engine/prefill/BitmapPreFillRunner$Clock;
.super Ljava/lang/Object;
.source "BitmapPreFillRunner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/load/engine/prefill/BitmapPreFillRunner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Clock"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 156
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/load/engine/prefill/BitmapPreFillRunner$Clock;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public now()J
    .locals 3

    .prologue
    .line 158
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/load/engine/prefill/BitmapPreFillRunner$Clock;
    invoke-static {}, Landroid/os/SystemClock;->currentThreadTimeMillis()J

    move-result-wide v1

    move-wide v0, v1

    .end local v0    # "this":Lcom/bumptech/glide/load/engine/prefill/BitmapPreFillRunner$Clock;
    return-wide v0
.end method

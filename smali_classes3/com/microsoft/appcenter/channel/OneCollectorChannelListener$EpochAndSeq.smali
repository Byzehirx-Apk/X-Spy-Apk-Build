.class Lcom/microsoft/appcenter/channel/OneCollectorChannelListener$EpochAndSeq;
.super Ljava/lang/Object;
.source "OneCollectorChannelListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/microsoft/appcenter/channel/OneCollectorChannelListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "EpochAndSeq"
.end annotation


# instance fields
.field final epoch:Ljava/lang/String;

.field seq:J


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 250
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/channel/OneCollectorChannelListener$EpochAndSeq;
    move-object v1, p1

    .local v1, "epoch":Ljava/lang/String;
    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 251
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/microsoft/appcenter/channel/OneCollectorChannelListener$EpochAndSeq;->epoch:Ljava/lang/String;

    .line 252
    return-void
.end method

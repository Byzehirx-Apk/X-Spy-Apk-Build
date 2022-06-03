.class public final Landroidx/core/net/TrafficStatsCompat;
.super Ljava/lang/Object;
.source "TrafficStatsCompat.java"


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 167
    move-object v0, p0

    .local v0, "this":Landroidx/core/net/TrafficStatsCompat;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static clearThreadStatsTag()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 41
    invoke-static {}, Landroid/net/TrafficStats;->clearThreadStatsTag()V

    .line 42
    return-void
.end method

.method public static getThreadStatsTag()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 53
    invoke-static {}, Landroid/net/TrafficStats;->getThreadStatsTag()I

    move-result v0

    return v0
.end method

.method public static incrementOperationCount(I)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 67
    move v0, p0

    .local v0, "operationCount":I
    move v1, v0

    invoke-static {v1}, Landroid/net/TrafficStats;->incrementOperationCount(I)V

    .line 68
    return-void
.end method

.method public static incrementOperationCount(II)V
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 81
    move v0, p0

    .local v0, "tag":I
    move v1, p1

    .local v1, "operationCount":I
    move v2, v0

    move v3, v1

    invoke-static {v2, v3}, Landroid/net/TrafficStats;->incrementOperationCount(II)V

    .line 82
    return-void
.end method

.method public static setThreadStatsTag(I)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 99
    move v0, p0

    .local v0, "tag":I
    move v1, v0

    invoke-static {v1}, Landroid/net/TrafficStats;->setThreadStatsTag(I)V

    .line 100
    return-void
.end method

.method public static tagDatagramSocket(Ljava/net/DatagramSocket;)V
    .locals 7
    .param p0    # Ljava/net/DatagramSocket;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 137
    move-object v0, p0

    .local v0, "socket":Ljava/net/DatagramSocket;
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x18

    if-lt v2, v3, :cond_0

    .line 138
    move-object v2, v0

    invoke-static {v2}, Landroid/net/TrafficStats;->tagDatagramSocket(Ljava/net/DatagramSocket;)V

    .line 148
    :goto_0
    return-void

    .line 140
    :cond_0
    move-object v2, v0

    invoke-static {v2}, Landroid/os/ParcelFileDescriptor;->fromDatagramSocket(Ljava/net/DatagramSocket;)Landroid/os/ParcelFileDescriptor;

    move-result-object v2

    move-object v1, v2

    .line 141
    .local v1, "pfd":Landroid/os/ParcelFileDescriptor;
    new-instance v2, Landroidx/core/net/DatagramSocketWrapper;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    move-object v5, v1

    invoke-virtual {v5}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Landroidx/core/net/DatagramSocketWrapper;-><init>(Ljava/net/DatagramSocket;Ljava/io/FileDescriptor;)V

    invoke-static {v2}, Landroid/net/TrafficStats;->tagSocket(Ljava/net/Socket;)V

    .line 146
    move-object v2, v1

    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->detachFd()I

    move-result v2

    goto :goto_0
.end method

.method public static tagSocket(Ljava/net/Socket;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 114
    move-object v0, p0

    .local v0, "socket":Ljava/net/Socket;
    move-object v1, v0

    invoke-static {v1}, Landroid/net/TrafficStats;->tagSocket(Ljava/net/Socket;)V

    .line 115
    return-void
.end method

.method public static untagDatagramSocket(Ljava/net/DatagramSocket;)V
    .locals 7
    .param p0    # Ljava/net/DatagramSocket;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 154
    move-object v0, p0

    .local v0, "socket":Ljava/net/DatagramSocket;
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x18

    if-lt v2, v3, :cond_0

    .line 155
    move-object v2, v0

    invoke-static {v2}, Landroid/net/TrafficStats;->untagDatagramSocket(Ljava/net/DatagramSocket;)V

    .line 165
    :goto_0
    return-void

    .line 157
    :cond_0
    move-object v2, v0

    invoke-static {v2}, Landroid/os/ParcelFileDescriptor;->fromDatagramSocket(Ljava/net/DatagramSocket;)Landroid/os/ParcelFileDescriptor;

    move-result-object v2

    move-object v1, v2

    .line 158
    .local v1, "pfd":Landroid/os/ParcelFileDescriptor;
    new-instance v2, Landroidx/core/net/DatagramSocketWrapper;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    move-object v5, v1

    invoke-virtual {v5}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Landroidx/core/net/DatagramSocketWrapper;-><init>(Ljava/net/DatagramSocket;Ljava/io/FileDescriptor;)V

    invoke-static {v2}, Landroid/net/TrafficStats;->untagSocket(Ljava/net/Socket;)V

    .line 163
    move-object v2, v1

    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->detachFd()I

    move-result v2

    goto :goto_0
.end method

.method public static untagSocket(Ljava/net/Socket;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 124
    move-object v0, p0

    .local v0, "socket":Ljava/net/Socket;
    move-object v1, v0

    invoke-static {v1}, Landroid/net/TrafficStats;->untagSocket(Ljava/net/Socket;)V

    .line 125
    return-void
.end method

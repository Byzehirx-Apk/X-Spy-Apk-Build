.class Landroidx/core/net/DatagramSocketWrapper$DatagramSocketImplWrapper;
.super Ljava/net/SocketImpl;
.source "DatagramSocketWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/net/DatagramSocketWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DatagramSocketImplWrapper"
.end annotation


# direct methods
.method constructor <init>(Ljava/net/DatagramSocket;Ljava/io/FileDescriptor;)V
    .locals 5

    .prologue
    .line 40
    move-object v0, p0

    .local v0, "this":Landroidx/core/net/DatagramSocketWrapper$DatagramSocketImplWrapper;
    move-object v1, p1

    .local v1, "socket":Ljava/net/DatagramSocket;
    move-object v2, p2

    .local v2, "fd":Ljava/io/FileDescriptor;
    move-object v3, v0

    invoke-direct {v3}, Ljava/net/SocketImpl;-><init>()V

    .line 41
    move-object v3, v0

    move-object v4, v1

    invoke-virtual {v4}, Ljava/net/DatagramSocket;->getLocalPort()I

    move-result v4

    iput v4, v3, Landroidx/core/net/DatagramSocketWrapper$DatagramSocketImplWrapper;->localport:I

    .line 42
    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Landroidx/core/net/DatagramSocketWrapper$DatagramSocketImplWrapper;->fd:Ljava/io/FileDescriptor;

    .line 43
    return-void
.end method


# virtual methods
.method protected accept(Ljava/net/SocketImpl;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 47
    move-object v0, p0

    .local v0, "this":Landroidx/core/net/DatagramSocketWrapper$DatagramSocketImplWrapper;
    move-object v1, p1

    .local v1, "newSocket":Ljava/net/SocketImpl;
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v2
.end method

.method protected available()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 52
    move-object v0, p0

    .local v0, "this":Landroidx/core/net/DatagramSocketWrapper$DatagramSocketImplWrapper;
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    move-object v3, v1

    move-object v1, v3

    move-object v2, v3

    invoke-direct {v2}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v1
.end method

.method protected bind(Ljava/net/InetAddress;I)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 57
    move-object v0, p0

    .local v0, "this":Landroidx/core/net/DatagramSocketWrapper$DatagramSocketImplWrapper;
    move-object v1, p1

    .local v1, "address":Ljava/net/InetAddress;
    move v2, p2

    .local v2, "port":I
    new-instance v3, Ljava/lang/UnsupportedOperationException;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v3
.end method

.method protected close()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 62
    move-object v0, p0

    .local v0, "this":Landroidx/core/net/DatagramSocketWrapper$DatagramSocketImplWrapper;
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    move-object v3, v1

    move-object v1, v3

    move-object v2, v3

    invoke-direct {v2}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v1
.end method

.method protected connect(Ljava/lang/String;I)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 67
    move-object v0, p0

    .local v0, "this":Landroidx/core/net/DatagramSocketWrapper$DatagramSocketImplWrapper;
    move-object v1, p1

    .local v1, "host":Ljava/lang/String;
    move v2, p2

    .local v2, "port":I
    new-instance v3, Ljava/lang/UnsupportedOperationException;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v3
.end method

.method protected connect(Ljava/net/InetAddress;I)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 72
    move-object v0, p0

    .local v0, "this":Landroidx/core/net/DatagramSocketWrapper$DatagramSocketImplWrapper;
    move-object v1, p1

    .local v1, "address":Ljava/net/InetAddress;
    move v2, p2

    .local v2, "port":I
    new-instance v3, Ljava/lang/UnsupportedOperationException;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v3
.end method

.method protected connect(Ljava/net/SocketAddress;I)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 97
    move-object v0, p0

    .local v0, "this":Landroidx/core/net/DatagramSocketWrapper$DatagramSocketImplWrapper;
    move-object v1, p1

    .local v1, "remoteAddr":Ljava/net/SocketAddress;
    move v2, p2

    .local v2, "timeout":I
    new-instance v3, Ljava/lang/UnsupportedOperationException;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v3
.end method

.method protected create(Z)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 77
    move-object v0, p0

    .local v0, "this":Landroidx/core/net/DatagramSocketWrapper$DatagramSocketImplWrapper;
    move v1, p1

    .local v1, "isStreaming":Z
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v2
.end method

.method protected getInputStream()Ljava/io/InputStream;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 82
    move-object v0, p0

    .local v0, "this":Landroidx/core/net/DatagramSocketWrapper$DatagramSocketImplWrapper;
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    move-object v3, v1

    move-object v1, v3

    move-object v2, v3

    invoke-direct {v2}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v1
.end method

.method public getOption(I)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 107
    move-object v0, p0

    .local v0, "this":Landroidx/core/net/DatagramSocketWrapper$DatagramSocketImplWrapper;
    move v1, p1

    .local v1, "optID":I
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v2
.end method

.method protected getOutputStream()Ljava/io/OutputStream;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 87
    move-object v0, p0

    .local v0, "this":Landroidx/core/net/DatagramSocketWrapper$DatagramSocketImplWrapper;
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    move-object v3, v1

    move-object v1, v3

    move-object v2, v3

    invoke-direct {v2}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v1
.end method

.method protected listen(I)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 92
    move-object v0, p0

    .local v0, "this":Landroidx/core/net/DatagramSocketWrapper$DatagramSocketImplWrapper;
    move v1, p1

    .local v1, "backlog":I
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v2
.end method

.method protected sendUrgentData(I)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 102
    move-object v0, p0

    .local v0, "this":Landroidx/core/net/DatagramSocketWrapper$DatagramSocketImplWrapper;
    move v1, p1

    .local v1, "value":I
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v2
.end method

.method public setOption(ILjava/lang/Object;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 112
    move-object v0, p0

    .local v0, "this":Landroidx/core/net/DatagramSocketWrapper$DatagramSocketImplWrapper;
    move v1, p1

    .local v1, "optID":I
    move-object v2, p2

    .local v2, "val":Ljava/lang/Object;
    new-instance v3, Ljava/lang/UnsupportedOperationException;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v3
.end method

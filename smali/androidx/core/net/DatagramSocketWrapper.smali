.class Landroidx/core/net/DatagramSocketWrapper;
.super Ljava/net/Socket;
.source "DatagramSocketWrapper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/net/DatagramSocketWrapper$DatagramSocketImplWrapper;
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/net/DatagramSocket;Ljava/io/FileDescriptor;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 32
    move-object v0, p0

    .local v0, "this":Landroidx/core/net/DatagramSocketWrapper;
    move-object v1, p1

    .local v1, "socket":Ljava/net/DatagramSocket;
    move-object v2, p2

    .local v2, "fd":Ljava/io/FileDescriptor;
    move-object v3, v0

    new-instance v4, Landroidx/core/net/DatagramSocketWrapper$DatagramSocketImplWrapper;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    move-object v6, v1

    move-object v7, v2

    invoke-direct {v5, v6, v7}, Landroidx/core/net/DatagramSocketWrapper$DatagramSocketImplWrapper;-><init>(Ljava/net/DatagramSocket;Ljava/io/FileDescriptor;)V

    invoke-direct {v3, v4}, Ljava/net/Socket;-><init>(Ljava/net/SocketImpl;)V

    .line 33
    return-void
.end method

.class Lcom/microsoft/appcenter/http/TLS1_2SocketFactory;
.super Ljavax/net/ssl/SSLSocketFactory;
.source "TLS1_2SocketFactory.java"


# static fields
.field private static final ENABLED_PROTOCOLS:[Ljava/lang/String;

.field private static final TLS1_2_PROTOCOL:Ljava/lang/String; = "TLSv1.2"


# instance fields
.field private final delegate:Ljavax/net/ssl/SSLSocketFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 33
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x0

    const-string/jumbo v3, "TLSv1.2"

    aput-object v3, v1, v2

    sput-object v0, Lcom/microsoft/appcenter/http/TLS1_2SocketFactory;->ENABLED_PROTOCOLS:[Ljava/lang/String;

    return-void
.end method

.method constructor <init>()V
    .locals 7

    .prologue
    .line 42
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/http/TLS1_2SocketFactory;
    move-object v3, v0

    invoke-direct {v3}, Ljavax/net/ssl/SSLSocketFactory;-><init>()V

    .line 43
    const/4 v3, 0x0

    move-object v1, v3

    .line 50
    .local v1, "socketFactory":Ljavax/net/ssl/SSLSocketFactory;
    :try_start_0
    const-string/jumbo v3, "TLSv1.2"

    invoke-static {v3}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v3

    move-object v2, v3

    .line 51
    .local v2, "sc":Ljavax/net/ssl/SSLContext;
    move-object v3, v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v5, v6}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    .line 52
    move-object v3, v2

    invoke-virtual {v3}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;
    :try_end_0
    .catch Ljava/security/KeyManagementException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v3

    move-object v1, v3

    .line 54
    .line 55
    .end local v2    # "sc":Ljavax/net/ssl/SSLContext;
    :goto_0
    move-object v3, v0

    move-object v4, v1

    if-eqz v4, :cond_0

    move-object v4, v1

    :goto_1
    iput-object v4, v3, Lcom/microsoft/appcenter/http/TLS1_2SocketFactory;->delegate:Ljavax/net/ssl/SSLSocketFactory;

    .line 56
    return-void

    .line 53
    :catch_0
    move-exception v3

    :goto_2
    move-object v2, v3

    goto :goto_0

    .line 55
    :cond_0
    invoke-static {}, Ljavax/net/ssl/HttpsURLConnection;->getDefaultSSLSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v4

    goto :goto_1

    .line 53
    :catch_1
    move-exception v3

    goto :goto_2
.end method

.method private forceTLS1_2(Ljava/net/Socket;)Ljavax/net/ssl/SSLSocket;
    .locals 5

    .prologue
    .line 65
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/http/TLS1_2SocketFactory;
    move-object v1, p1

    .local v1, "socket":Ljava/net/Socket;
    move-object v3, v1

    check-cast v3, Ljavax/net/ssl/SSLSocket;

    move-object v2, v3

    .line 66
    .local v2, "sslSocket":Ljavax/net/ssl/SSLSocket;
    move-object v3, v2

    sget-object v4, Lcom/microsoft/appcenter/http/TLS1_2SocketFactory;->ENABLED_PROTOCOLS:[Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljavax/net/ssl/SSLSocket;->setEnabledProtocols([Ljava/lang/String;)V

    .line 67
    move-object v3, v2

    move-object v0, v3

    .end local v0    # "this":Lcom/microsoft/appcenter/http/TLS1_2SocketFactory;
    return-object v0
.end method


# virtual methods
.method public bridge synthetic createSocket()Ljava/net/Socket;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 23
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/http/TLS1_2SocketFactory;
    move-object v1, v0

    invoke-virtual {v1}, Lcom/microsoft/appcenter/http/TLS1_2SocketFactory;->createSocket()Ljavax/net/ssl/SSLSocket;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lcom/microsoft/appcenter/http/TLS1_2SocketFactory;
    return-object v0
.end method

.method public bridge synthetic createSocket(Ljava/lang/String;I)Ljava/net/Socket;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .prologue
    .line 23
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/http/TLS1_2SocketFactory;
    move-object v1, p1

    move v2, p2

    move-object v3, v0

    move-object v4, v1

    move v5, v2

    invoke-virtual {v3, v4, v5}, Lcom/microsoft/appcenter/http/TLS1_2SocketFactory;->createSocket(Ljava/lang/String;I)Ljavax/net/ssl/SSLSocket;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Lcom/microsoft/appcenter/http/TLS1_2SocketFactory;
    return-object v0
.end method

.method public bridge synthetic createSocket(Ljava/lang/String;ILjava/net/InetAddress;I)Ljava/net/Socket;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .prologue
    .line 23
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/http/TLS1_2SocketFactory;
    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, v0

    move-object v6, v1

    move v7, v2

    move-object v8, v3

    move v9, v4

    invoke-virtual {v5, v6, v7, v8, v9}, Lcom/microsoft/appcenter/http/TLS1_2SocketFactory;->createSocket(Ljava/lang/String;ILjava/net/InetAddress;I)Ljavax/net/ssl/SSLSocket;

    move-result-object v5

    move-object v0, v5

    .end local v0    # "this":Lcom/microsoft/appcenter/http/TLS1_2SocketFactory;
    return-object v0
.end method

.method public bridge synthetic createSocket(Ljava/net/InetAddress;I)Ljava/net/Socket;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 23
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/http/TLS1_2SocketFactory;
    move-object v1, p1

    move v2, p2

    move-object v3, v0

    move-object v4, v1

    move v5, v2

    invoke-virtual {v3, v4, v5}, Lcom/microsoft/appcenter/http/TLS1_2SocketFactory;->createSocket(Ljava/net/InetAddress;I)Ljavax/net/ssl/SSLSocket;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Lcom/microsoft/appcenter/http/TLS1_2SocketFactory;
    return-object v0
.end method

.method public bridge synthetic createSocket(Ljava/net/InetAddress;ILjava/net/InetAddress;I)Ljava/net/Socket;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 23
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/http/TLS1_2SocketFactory;
    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, v0

    move-object v6, v1

    move v7, v2

    move-object v8, v3

    move v9, v4

    invoke-virtual {v5, v6, v7, v8, v9}, Lcom/microsoft/appcenter/http/TLS1_2SocketFactory;->createSocket(Ljava/net/InetAddress;ILjava/net/InetAddress;I)Ljavax/net/ssl/SSLSocket;

    move-result-object v5

    move-object v0, v5

    .end local v0    # "this":Lcom/microsoft/appcenter/http/TLS1_2SocketFactory;
    return-object v0
.end method

.method public bridge synthetic createSocket(Ljava/net/Socket;Ljava/lang/String;IZ)Ljava/net/Socket;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 23
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/http/TLS1_2SocketFactory;
    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v5, v0

    move-object v6, v1

    move-object v7, v2

    move v8, v3

    move v9, v4

    invoke-virtual {v5, v6, v7, v8, v9}, Lcom/microsoft/appcenter/http/TLS1_2SocketFactory;->createSocket(Ljava/net/Socket;Ljava/lang/String;IZ)Ljavax/net/ssl/SSLSocket;

    move-result-object v5

    move-object v0, v5

    .end local v0    # "this":Lcom/microsoft/appcenter/http/TLS1_2SocketFactory;
    return-object v0
.end method

.method public createSocket()Ljavax/net/ssl/SSLSocket;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 82
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/http/TLS1_2SocketFactory;
    move-object v1, v0

    move-object v2, v0

    iget-object v2, v2, Lcom/microsoft/appcenter/http/TLS1_2SocketFactory;->delegate:Ljavax/net/ssl/SSLSocketFactory;

    invoke-virtual {v2}, Ljavax/net/ssl/SSLSocketFactory;->createSocket()Ljava/net/Socket;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/microsoft/appcenter/http/TLS1_2SocketFactory;->forceTLS1_2(Ljava/net/Socket;)Ljavax/net/ssl/SSLSocket;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lcom/microsoft/appcenter/http/TLS1_2SocketFactory;
    return-object v0
.end method

.method public createSocket(Ljava/lang/String;I)Ljavax/net/ssl/SSLSocket;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 87
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/http/TLS1_2SocketFactory;
    move-object v1, p1

    .local v1, "host":Ljava/lang/String;
    move v2, p2

    .local v2, "port":I
    move-object v3, v0

    move-object v4, v0

    iget-object v4, v4, Lcom/microsoft/appcenter/http/TLS1_2SocketFactory;->delegate:Ljavax/net/ssl/SSLSocketFactory;

    move-object v5, v1

    move v6, v2

    invoke-virtual {v4, v5, v6}, Ljavax/net/ssl/SSLSocketFactory;->createSocket(Ljava/lang/String;I)Ljava/net/Socket;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/microsoft/appcenter/http/TLS1_2SocketFactory;->forceTLS1_2(Ljava/net/Socket;)Ljavax/net/ssl/SSLSocket;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Lcom/microsoft/appcenter/http/TLS1_2SocketFactory;
    return-object v0
.end method

.method public createSocket(Ljava/lang/String;ILjava/net/InetAddress;I)Ljavax/net/ssl/SSLSocket;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 97
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/http/TLS1_2SocketFactory;
    move-object v1, p1

    .local v1, "host":Ljava/lang/String;
    move v2, p2

    .local v2, "port":I
    move-object v3, p3

    .local v3, "localHost":Ljava/net/InetAddress;
    move v4, p4

    .local v4, "localPort":I
    move-object v5, v0

    move-object v6, v0

    iget-object v6, v6, Lcom/microsoft/appcenter/http/TLS1_2SocketFactory;->delegate:Ljavax/net/ssl/SSLSocketFactory;

    move-object v7, v1

    move v8, v2

    move-object v9, v3

    move v10, v4

    invoke-virtual {v6, v7, v8, v9, v10}, Ljavax/net/ssl/SSLSocketFactory;->createSocket(Ljava/lang/String;ILjava/net/InetAddress;I)Ljava/net/Socket;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/microsoft/appcenter/http/TLS1_2SocketFactory;->forceTLS1_2(Ljava/net/Socket;)Ljavax/net/ssl/SSLSocket;

    move-result-object v5

    move-object v0, v5

    .end local v0    # "this":Lcom/microsoft/appcenter/http/TLS1_2SocketFactory;
    return-object v0
.end method

.method public createSocket(Ljava/net/InetAddress;I)Ljavax/net/ssl/SSLSocket;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 92
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/http/TLS1_2SocketFactory;
    move-object v1, p1

    .local v1, "host":Ljava/net/InetAddress;
    move v2, p2

    .local v2, "port":I
    move-object v3, v0

    move-object v4, v0

    iget-object v4, v4, Lcom/microsoft/appcenter/http/TLS1_2SocketFactory;->delegate:Ljavax/net/ssl/SSLSocketFactory;

    move-object v5, v1

    move v6, v2

    invoke-virtual {v4, v5, v6}, Ljavax/net/ssl/SSLSocketFactory;->createSocket(Ljava/net/InetAddress;I)Ljava/net/Socket;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/microsoft/appcenter/http/TLS1_2SocketFactory;->forceTLS1_2(Ljava/net/Socket;)Ljavax/net/ssl/SSLSocket;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Lcom/microsoft/appcenter/http/TLS1_2SocketFactory;
    return-object v0
.end method

.method public createSocket(Ljava/net/InetAddress;ILjava/net/InetAddress;I)Ljavax/net/ssl/SSLSocket;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 102
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/http/TLS1_2SocketFactory;
    move-object v1, p1

    .local v1, "address":Ljava/net/InetAddress;
    move v2, p2

    .local v2, "port":I
    move-object v3, p3

    .local v3, "localAddress":Ljava/net/InetAddress;
    move v4, p4

    .local v4, "localPort":I
    move-object v5, v0

    move-object v6, v0

    iget-object v6, v6, Lcom/microsoft/appcenter/http/TLS1_2SocketFactory;->delegate:Ljavax/net/ssl/SSLSocketFactory;

    move-object v7, v1

    move v8, v2

    move-object v9, v3

    move v10, v4

    invoke-virtual {v6, v7, v8, v9, v10}, Ljavax/net/ssl/SSLSocketFactory;->createSocket(Ljava/net/InetAddress;ILjava/net/InetAddress;I)Ljava/net/Socket;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/microsoft/appcenter/http/TLS1_2SocketFactory;->forceTLS1_2(Ljava/net/Socket;)Ljavax/net/ssl/SSLSocket;

    move-result-object v5

    move-object v0, v5

    .end local v0    # "this":Lcom/microsoft/appcenter/http/TLS1_2SocketFactory;
    return-object v0
.end method

.method public createSocket(Ljava/net/Socket;Ljava/lang/String;IZ)Ljavax/net/ssl/SSLSocket;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 107
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/http/TLS1_2SocketFactory;
    move-object v1, p1

    .local v1, "socket":Ljava/net/Socket;
    move-object v2, p2

    .local v2, "host":Ljava/lang/String;
    move v3, p3

    .local v3, "port":I
    move v4, p4

    .local v4, "autoClose":Z
    move-object v5, v0

    move-object v6, v0

    iget-object v6, v6, Lcom/microsoft/appcenter/http/TLS1_2SocketFactory;->delegate:Ljavax/net/ssl/SSLSocketFactory;

    move-object v7, v1

    move-object v8, v2

    move v9, v3

    move v10, v4

    invoke-virtual {v6, v7, v8, v9, v10}, Ljavax/net/ssl/SSLSocketFactory;->createSocket(Ljava/net/Socket;Ljava/lang/String;IZ)Ljava/net/Socket;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/microsoft/appcenter/http/TLS1_2SocketFactory;->forceTLS1_2(Ljava/net/Socket;)Ljavax/net/ssl/SSLSocket;

    move-result-object v5

    move-object v0, v5

    .end local v0    # "this":Lcom/microsoft/appcenter/http/TLS1_2SocketFactory;
    return-object v0
.end method

.method public getDefaultCipherSuites()[Ljava/lang/String;
    .locals 2

    .prologue
    .line 72
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/http/TLS1_2SocketFactory;
    move-object v1, v0

    iget-object v1, v1, Lcom/microsoft/appcenter/http/TLS1_2SocketFactory;->delegate:Ljavax/net/ssl/SSLSocketFactory;

    invoke-virtual {v1}, Ljavax/net/ssl/SSLSocketFactory;->getDefaultCipherSuites()[Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lcom/microsoft/appcenter/http/TLS1_2SocketFactory;
    return-object v0
.end method

.method public getSupportedCipherSuites()[Ljava/lang/String;
    .locals 2

    .prologue
    .line 77
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/http/TLS1_2SocketFactory;
    move-object v1, v0

    iget-object v1, v1, Lcom/microsoft/appcenter/http/TLS1_2SocketFactory;->delegate:Ljavax/net/ssl/SSLSocketFactory;

    invoke-virtual {v1}, Ljavax/net/ssl/SSLSocketFactory;->getSupportedCipherSuites()[Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lcom/microsoft/appcenter/http/TLS1_2SocketFactory;
    return-object v0
.end method

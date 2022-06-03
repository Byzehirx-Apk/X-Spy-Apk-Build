.class public Lgnu/bytecode/ArrayClassLoader;
.super Ljava/lang/ClassLoader;
.source "ArrayClassLoader.java"


# instance fields
.field cmap:Ljava/util/Hashtable;

.field context:Ljava/net/URL;

.field map:Ljava/util/Hashtable;


# direct methods
.method public constructor <init>()V
    .locals 6

    .prologue
    .line 21
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/ArrayClassLoader;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/ClassLoader;-><init>()V

    .line 13
    move-object v1, v0

    new-instance v2, Ljava/util/Hashtable;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const/16 v4, 0x64

    invoke-direct {v3, v4}, Ljava/util/Hashtable;-><init>(I)V

    iput-object v2, v1, Lgnu/bytecode/ArrayClassLoader;->map:Ljava/util/Hashtable;

    .line 15
    move-object v1, v0

    new-instance v2, Ljava/util/Hashtable;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const/16 v4, 0x64

    invoke-direct {v3, v4}, Ljava/util/Hashtable;-><init>(I)V

    iput-object v2, v1, Lgnu/bytecode/ArrayClassLoader;->cmap:Ljava/util/Hashtable;

    .line 22
    return-void
.end method

.method public constructor <init>(Ljava/lang/ClassLoader;)V
    .locals 7

    .prologue
    .line 26
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/ArrayClassLoader;
    move-object v1, p1

    .local v1, "parent":Ljava/lang/ClassLoader;
    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Ljava/lang/ClassLoader;-><init>(Ljava/lang/ClassLoader;)V

    .line 13
    move-object v2, v0

    new-instance v3, Ljava/util/Hashtable;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    const/16 v5, 0x64

    invoke-direct {v4, v5}, Ljava/util/Hashtable;-><init>(I)V

    iput-object v3, v2, Lgnu/bytecode/ArrayClassLoader;->map:Ljava/util/Hashtable;

    .line 15
    move-object v2, v0

    new-instance v3, Ljava/util/Hashtable;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    const/16 v5, 0x64

    invoke-direct {v4, v5}, Ljava/util/Hashtable;-><init>(I)V

    iput-object v3, v2, Lgnu/bytecode/ArrayClassLoader;->cmap:Ljava/util/Hashtable;

    .line 27
    return-void
.end method

.method public constructor <init>([Ljava/lang/String;[[B)V
    .locals 9

    .prologue
    .line 44
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/ArrayClassLoader;
    move-object v1, p1

    .local v1, "classNames":[Ljava/lang/String;
    move-object v2, p2

    .local v2, "classBytes":[[B
    move-object v4, v0

    invoke-direct {v4}, Ljava/lang/ClassLoader;-><init>()V

    .line 13
    move-object v4, v0

    new-instance v5, Ljava/util/Hashtable;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    const/16 v7, 0x64

    invoke-direct {v6, v7}, Ljava/util/Hashtable;-><init>(I)V

    iput-object v5, v4, Lgnu/bytecode/ArrayClassLoader;->map:Ljava/util/Hashtable;

    .line 15
    move-object v4, v0

    new-instance v5, Ljava/util/Hashtable;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    const/16 v7, 0x64

    invoke-direct {v6, v7}, Ljava/util/Hashtable;-><init>(I)V

    iput-object v5, v4, Lgnu/bytecode/ArrayClassLoader;->cmap:Ljava/util/Hashtable;

    .line 45
    move-object v4, v2

    array-length v4, v4

    move v3, v4

    .local v3, "i":I
    :goto_0
    add-int/lit8 v3, v3, -0x1

    move v4, v3

    if-ltz v4, :cond_0

    .line 46
    move-object v4, v0

    move-object v5, v1

    move v6, v3

    aget-object v5, v5, v6

    move-object v6, v2

    move v7, v3

    aget-object v6, v6, v7

    invoke-virtual {v4, v5, v6}, Lgnu/bytecode/ArrayClassLoader;->addClass(Ljava/lang/String;[B)V

    goto :goto_0

    .line 47
    :cond_0
    return-void
.end method

.method public constructor <init>([[B)V
    .locals 8

    .prologue
    .line 38
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/ArrayClassLoader;
    move-object v1, p1

    .local v1, "classBytes":[[B
    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/ClassLoader;-><init>()V

    .line 13
    move-object v3, v0

    new-instance v4, Ljava/util/Hashtable;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    const/16 v6, 0x64

    invoke-direct {v5, v6}, Ljava/util/Hashtable;-><init>(I)V

    iput-object v4, v3, Lgnu/bytecode/ArrayClassLoader;->map:Ljava/util/Hashtable;

    .line 15
    move-object v3, v0

    new-instance v4, Ljava/util/Hashtable;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    const/16 v6, 0x64

    invoke-direct {v5, v6}, Ljava/util/Hashtable;-><init>(I)V

    iput-object v4, v3, Lgnu/bytecode/ArrayClassLoader;->cmap:Ljava/util/Hashtable;

    .line 39
    move-object v3, v1

    array-length v3, v3

    move v2, v3

    .local v2, "i":I
    :goto_0
    add-int/lit8 v2, v2, -0x1

    move v3, v2

    if-ltz v3, :cond_0

    .line 40
    move-object v3, v0

    new-instance v4, Ljava/lang/StringBuilder;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "lambda"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move v5, v2

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v5, v1

    move v6, v2

    aget-object v5, v5, v6

    invoke-virtual {v3, v4, v5}, Lgnu/bytecode/ArrayClassLoader;->addClass(Ljava/lang/String;[B)V

    goto :goto_0

    .line 41
    :cond_0
    return-void
.end method

.method public static getContextPackage(Ljava/lang/String;)Ljava/lang/Package;
    .locals 5

    .prologue
    .line 154
    move-object v0, p0

    .local v0, "cname":Ljava/lang/String;
    :try_start_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    move-object v1, v3

    .line 155
    .local v1, "loader":Ljava/lang/ClassLoader;
    move-object v3, v1

    instance-of v3, v3, Lgnu/bytecode/ArrayClassLoader;

    if-eqz v3, :cond_0

    .line 156
    move-object v3, v1

    check-cast v3, Lgnu/bytecode/ArrayClassLoader;

    move-object v4, v0

    invoke-virtual {v3, v4}, Lgnu/bytecode/ArrayClassLoader;->getPackage(Ljava/lang/String;)Ljava/lang/Package;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    move-object v0, v3

    .line 161
    .end local v0    # "cname":Ljava/lang/String;
    .end local v1    # "loader":Ljava/lang/ClassLoader;
    :goto_0
    return-object v0

    .line 160
    .line 161
    .restart local v0    # "cname":Ljava/lang/String;
    :cond_0
    :goto_1
    move-object v3, v0

    invoke-static {v3}, Ljava/lang/Package;->getPackage(Ljava/lang/String;)Ljava/lang/Package;

    move-result-object v3

    move-object v0, v3

    goto :goto_0

    .line 158
    :catch_0
    move-exception v3

    move-object v2, v3

    goto :goto_1
.end method


# virtual methods
.method public addClass(Lgnu/bytecode/ClassType;)V
    .locals 5

    .prologue
    .line 61
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/ArrayClassLoader;
    move-object v1, p1

    .local v1, "ctype":Lgnu/bytecode/ClassType;
    move-object v2, v0

    iget-object v2, v2, Lgnu/bytecode/ArrayClassLoader;->map:Ljava/util/Hashtable;

    move-object v3, v1

    invoke-virtual {v3}, Lgnu/bytecode/ClassType;->getName()Ljava/lang/String;

    move-result-object v3

    move-object v4, v1

    invoke-virtual {v2, v3, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 62
    return-void
.end method

.method public addClass(Ljava/lang/Class;)V
    .locals 5

    .prologue
    .line 51
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/ArrayClassLoader;
    move-object v1, p1

    .local v1, "clas":Ljava/lang/Class;
    move-object v2, v0

    iget-object v2, v2, Lgnu/bytecode/ArrayClassLoader;->cmap:Ljava/util/Hashtable;

    move-object v3, v1

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    move-object v4, v1

    invoke-virtual {v2, v3, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 52
    return-void
.end method

.method public addClass(Ljava/lang/String;[B)V
    .locals 6

    .prologue
    .line 56
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/ArrayClassLoader;
    move-object v1, p1

    .local v1, "name":Ljava/lang/String;
    move-object v2, p2

    .local v2, "bytes":[B
    move-object v3, v0

    iget-object v3, v3, Lgnu/bytecode/ArrayClassLoader;->map:Ljava/util/Hashtable;

    move-object v4, v1

    move-object v5, v2

    invoke-virtual {v3, v4, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 57
    return-void
.end method

.method protected findResource(Ljava/lang/String;)Ljava/net/URL;
    .locals 8

    .prologue
    .line 79
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/ArrayClassLoader;
    move-object v1, p1

    .local v1, "name":Ljava/lang/String;
    move-object v3, v0

    iget-object v3, v3, Lgnu/bytecode/ArrayClassLoader;->context:Ljava/net/URL;

    if-eqz v3, :cond_0

    .line 83
    :try_start_0
    new-instance v3, Ljava/net/URL;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move-object v5, v0

    iget-object v5, v5, Lgnu/bytecode/ArrayClassLoader;->context:Ljava/net/URL;

    move-object v6, v1

    invoke-direct {v4, v5, v6}, Ljava/net/URL;-><init>(Ljava/net/URL;Ljava/lang/String;)V

    move-object v2, v3

    .line 84
    .local v2, "url":Ljava/net/URL;
    move-object v3, v2

    invoke-virtual {v3}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v3

    invoke-virtual {v3}, Ljava/net/URLConnection;->connect()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 85
    move-object v3, v2

    move-object v0, v3

    .line 92
    .end local v0    # "this":Lgnu/bytecode/ArrayClassLoader;
    .end local v2    # "url":Ljava/net/URL;
    :goto_0
    return-object v0

    .line 87
    .restart local v0    # "this":Lgnu/bytecode/ArrayClassLoader;
    :catch_0
    move-exception v3

    move-object v2, v3

    .line 92
    :cond_0
    move-object v3, v0

    move-object v4, v1

    invoke-super {v3, v4}, Ljava/lang/ClassLoader;->findResource(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v3

    move-object v0, v3

    goto :goto_0
.end method

.method public getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;
    .locals 10

    .prologue
    .line 66
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/ArrayClassLoader;
    move-object v1, p1

    .local v1, "name":Ljava/lang/String;
    move-object v5, v0

    move-object v6, v1

    invoke-super {v5, v6}, Ljava/lang/ClassLoader;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v5

    move-object v2, v5

    .line 67
    .local v2, "in":Ljava/io/InputStream;
    move-object v5, v2

    if-nez v5, :cond_0

    move-object v5, v1

    const-string/jumbo v6, ".class"

    invoke-virtual {v5, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 69
    move-object v5, v1

    const/4 v6, 0x0

    move-object v7, v1

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    const/4 v8, 0x6

    add-int/lit8 v7, v7, -0x6

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x2f

    const/16 v7, 0x2e

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v5

    move-object v3, v5

    .line 70
    .local v3, "cname":Ljava/lang/String;
    move-object v5, v0

    iget-object v5, v5, Lgnu/bytecode/ArrayClassLoader;->map:Ljava/util/Hashtable;

    move-object v6, v3

    invoke-virtual {v5, v6}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    move-object v4, v5

    .line 71
    .local v4, "r":Ljava/lang/Object;
    move-object v5, v4

    instance-of v5, v5, [B

    if-eqz v5, :cond_0

    .line 72
    new-instance v5, Ljava/io/ByteArrayInputStream;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    move-object v7, v4

    check-cast v7, [B

    check-cast v7, [B

    invoke-direct {v6, v7}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    move-object v0, v5

    .line 74
    .end local v0    # "this":Lgnu/bytecode/ArrayClassLoader;
    .end local v3    # "cname":Ljava/lang/String;
    .end local v4    # "r":Ljava/lang/Object;
    :goto_0
    return-object v0

    .restart local v0    # "this":Lgnu/bytecode/ArrayClassLoader;
    :cond_0
    move-object v5, v2

    move-object v0, v5

    goto :goto_0
.end method

.method public getResourceContext()Ljava/net/URL;
    .locals 2

    .prologue
    .line 30
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/ArrayClassLoader;
    move-object v1, v0

    iget-object v1, v1, Lgnu/bytecode/ArrayClassLoader;->context:Ljava/net/URL;

    move-object v0, v1

    .end local v0    # "this":Lgnu/bytecode/ArrayClassLoader;
    return-object v0
.end method

.method public loadClass(Ljava/lang/String;)Ljava/lang/Class;
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 112
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/ArrayClassLoader;
    move-object v1, p1

    .local v1, "name":Ljava/lang/String;
    move-object v7, v0

    iget-object v7, v7, Lgnu/bytecode/ArrayClassLoader;->cmap:Ljava/util/Hashtable;

    move-object v8, v1

    invoke-virtual {v7, v8}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    move-object v2, v7

    .line 113
    .local v2, "r":Ljava/lang/Object;
    move-object v7, v2

    if-eqz v7, :cond_0

    .line 114
    move-object v7, v2

    check-cast v7, Ljava/lang/Class;

    move-object v0, v7

    .line 145
    .end local v0    # "this":Lgnu/bytecode/ArrayClassLoader;
    .end local v2    # "r":Ljava/lang/Object;
    :goto_0
    return-object v0

    .line 115
    .restart local v0    # "this":Lgnu/bytecode/ArrayClassLoader;
    .restart local v2    # "r":Ljava/lang/Object;
    :cond_0
    move-object v7, v0

    iget-object v7, v7, Lgnu/bytecode/ArrayClassLoader;->map:Ljava/util/Hashtable;

    move-object v8, v1

    invoke-virtual {v7, v8}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    move-object v2, v7

    .line 116
    move-object v7, v2

    instance-of v7, v7, Lgnu/bytecode/ClassType;

    if-eqz v7, :cond_1

    .line 118
    move-object v7, v2

    check-cast v7, Lgnu/bytecode/ClassType;

    move-object v3, v7

    .line 119
    .local v3, "ctype":Lgnu/bytecode/ClassType;
    move-object v7, v3

    invoke-virtual {v7}, Lgnu/bytecode/ClassType;->isExisting()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 120
    move-object v7, v3

    iget-object v7, v7, Lgnu/bytecode/ClassType;->reflectClass:Ljava/lang/Class;

    move-object v2, v7

    .line 125
    .end local v2    # "r":Ljava/lang/Object;
    .end local v3    # "ctype":Lgnu/bytecode/ClassType;
    :cond_1
    :goto_1
    move-object v7, v2

    instance-of v7, v7, [B

    if-eqz v7, :cond_4

    .line 128
    move-object v7, v0

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    move-object v4, v8

    monitor-enter v7

    .line 130
    move-object v7, v0

    :try_start_0
    iget-object v7, v7, Lgnu/bytecode/ArrayClassLoader;->map:Ljava/util/Hashtable;

    move-object v8, v1

    invoke-virtual {v7, v8}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    move-object v2, v7

    .line 131
    .restart local v2    # "r":Ljava/lang/Object;
    move-object v7, v2

    instance-of v7, v7, [B

    if-eqz v7, :cond_3

    .line 133
    move-object v7, v2

    check-cast v7, [B

    check-cast v7, [B

    move-object v5, v7

    .line 134
    .local v5, "bytes":[B
    move-object v7, v0

    move-object v8, v1

    move-object v9, v5

    const/4 v10, 0x0

    move-object v11, v5

    array-length v11, v11

    invoke-virtual {v7, v8, v9, v10, v11}, Lgnu/bytecode/ArrayClassLoader;->defineClass(Ljava/lang/String;[BII)Ljava/lang/Class;

    move-result-object v7

    move-object v3, v7

    .line 135
    .local v3, "clas":Ljava/lang/Class;
    move-object v7, v0

    iget-object v7, v7, Lgnu/bytecode/ArrayClassLoader;->cmap:Ljava/util/Hashtable;

    move-object v8, v1

    move-object v9, v3

    invoke-virtual {v7, v8, v9}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .line 136
    .line 139
    .end local v5    # "bytes":[B
    :goto_2
    move-object v7, v4

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 145
    .end local v2    # "r":Ljava/lang/Object;
    :goto_3
    move-object v7, v3

    move-object v0, v7

    goto :goto_0

    .line 122
    .restart local v2    # "r":Ljava/lang/Object;
    .local v3, "ctype":Lgnu/bytecode/ClassType;
    :cond_2
    move-object v7, v3

    invoke-virtual {v7}, Lgnu/bytecode/ClassType;->writeToArray()[B

    move-result-object v7

    move-object v2, v7

    .local v2, "r":[B
    goto :goto_1

    .line 138
    .end local v3    # "ctype":Lgnu/bytecode/ClassType;
    .local v2, "r":Ljava/lang/Object;
    :cond_3
    move-object v7, v2

    :try_start_1
    check-cast v7, Ljava/lang/Class;

    move-object v3, v7

    .local v3, "clas":Ljava/lang/Class;
    goto :goto_2

    .line 139
    .end local v2    # "r":Ljava/lang/Object;
    .end local v3    # "clas":Ljava/lang/Class;
    :catchall_0
    move-exception v7

    move-object v6, v7

    move-object v7, v4

    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v7, v6

    throw v7

    .line 141
    :cond_4
    move-object v7, v2

    if-nez v7, :cond_5

    .line 142
    move-object v7, v0

    invoke-virtual {v7}, Lgnu/bytecode/ArrayClassLoader;->getParent()Ljava/lang/ClassLoader;

    move-result-object v7

    move-object v8, v1

    invoke-virtual {v7, v8}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v7

    move-object v3, v7

    .restart local v3    # "clas":Ljava/lang/Class;
    goto :goto_3

    .line 144
    .end local v3    # "clas":Ljava/lang/Class;
    :cond_5
    move-object v7, v2

    check-cast v7, Ljava/lang/Class;

    move-object v3, v7

    .restart local v3    # "clas":Ljava/lang/Class;
    goto :goto_3
.end method

.method public loadClass(Ljava/lang/String;Z)Ljava/lang/Class;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 98
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/ArrayClassLoader;
    move-object v1, p1

    .local v1, "name":Ljava/lang/String;
    move v2, p2

    .local v2, "resolve":Z
    move-object v4, v0

    move-object v5, v1

    invoke-virtual {v4, v5}, Lgnu/bytecode/ArrayClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    move-object v3, v4

    .line 99
    .local v3, "clas":Ljava/lang/Class;
    move v4, v2

    if-eqz v4, :cond_0

    .line 100
    move-object v4, v0

    move-object v5, v3

    invoke-virtual {v4, v5}, Lgnu/bytecode/ArrayClassLoader;->resolveClass(Ljava/lang/Class;)V

    .line 101
    :cond_0
    move-object v4, v3

    move-object v0, v4

    .end local v0    # "this":Lgnu/bytecode/ArrayClassLoader;
    return-object v0
.end method

.method public setResourceContext(Ljava/net/URL;)V
    .locals 4

    .prologue
    .line 33
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/ArrayClassLoader;
    move-object v1, p1

    .local v1, "context":Ljava/net/URL;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lgnu/bytecode/ArrayClassLoader;->context:Ljava/net/URL;

    return-void
.end method

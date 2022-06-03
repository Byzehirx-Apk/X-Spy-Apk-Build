.class public Lgnu/kawa/xml/WriteTo;
.super Lgnu/mapping/Procedure2;
.source "WriteTo.java"


# static fields
.field public static final writeTo:Lgnu/kawa/xml/WriteTo;

.field public static final writeToIfChanged:Lgnu/kawa/xml/WriteTo;


# instance fields
.field ifChanged:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 15
    new-instance v0, Lgnu/kawa/xml/WriteTo;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Lgnu/kawa/xml/WriteTo;-><init>()V

    sput-object v0, Lgnu/kawa/xml/WriteTo;->writeTo:Lgnu/kawa/xml/WriteTo;

    .line 16
    new-instance v0, Lgnu/kawa/xml/WriteTo;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Lgnu/kawa/xml/WriteTo;-><init>()V

    sput-object v0, Lgnu/kawa/xml/WriteTo;->writeToIfChanged:Lgnu/kawa/xml/WriteTo;

    .line 17
    sget-object v0, Lgnu/kawa/xml/WriteTo;->writeToIfChanged:Lgnu/kawa/xml/WriteTo;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lgnu/kawa/xml/WriteTo;->ifChanged:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 12
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/xml/WriteTo;
    move-object v1, v0

    invoke-direct {v1}, Lgnu/mapping/Procedure2;-><init>()V

    return-void
.end method

.method public static writeTo(Ljava/lang/Object;Lgnu/text/Path;Ljava/io/OutputStream;)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 22
    move-object v0, p0

    .local v0, "value":Ljava/lang/Object;
    move-object v1, p1

    .local v1, "ppath":Lgnu/text/Path;
    move-object v2, p2

    .local v2, "outs":Ljava/io/OutputStream;
    new-instance v6, Lgnu/mapping/OutPort;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    move-object v8, v2

    move-object v9, v1

    invoke-direct {v7, v8, v9}, Lgnu/mapping/OutPort;-><init>(Ljava/io/OutputStream;Lgnu/text/Path;)V

    move-object v3, v6

    .line 23
    .local v3, "out":Lgnu/mapping/OutPort;
    new-instance v6, Lgnu/xml/XMLPrinter;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    move-object v8, v3

    const/4 v9, 0x0

    invoke-direct {v7, v8, v9}, Lgnu/xml/XMLPrinter;-><init>(Lgnu/mapping/OutPort;Z)V

    move-object v4, v6

    .line 24
    .local v4, "consumer":Lgnu/xml/XMLPrinter;
    move-object v6, v1

    invoke-virtual {v6}, Lgnu/text/Path;->getExtension()Ljava/lang/String;

    move-result-object v6

    move-object v5, v6

    .line 25
    .local v5, "extension":Ljava/lang/String;
    const-string/jumbo v6, "html"

    move-object v7, v5

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 26
    move-object v6, v4

    const-string/jumbo v7, "html"

    invoke-virtual {v6, v7}, Lgnu/xml/XMLPrinter;->setStyle(Ljava/lang/Object;)V

    .line 27
    :cond_0
    move-object v6, v0

    move-object v7, v4

    invoke-static {v6, v7}, Lgnu/mapping/Values;->writeValues(Ljava/lang/Object;Lgnu/lists/Consumer;)V

    .line 28
    move-object v6, v3

    invoke-virtual {v6}, Lgnu/mapping/OutPort;->close()V

    .line 29
    return-void
.end method

.method public static writeTo(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 33
    move-object v0, p0

    .local v0, "value":Ljava/lang/Object;
    move-object v1, p1

    .local v1, "path":Ljava/lang/Object;
    move-object v4, v1

    invoke-static {v4}, Lgnu/text/Path;->valueOf(Ljava/lang/Object;)Lgnu/text/Path;

    move-result-object v4

    move-object v2, v4

    .line 34
    .local v2, "ppath":Lgnu/text/Path;
    move-object v4, v2

    invoke-virtual {v4}, Lgnu/text/Path;->openOutputStream()Ljava/io/OutputStream;

    move-result-object v4

    move-object v3, v4

    .line 35
    .local v3, "outs":Ljava/io/OutputStream;
    move-object v4, v0

    move-object v5, v2

    move-object v6, v3

    invoke-static {v4, v5, v6}, Lgnu/kawa/xml/WriteTo;->writeTo(Ljava/lang/Object;Lgnu/text/Path;Ljava/io/OutputStream;)V

    .line 36
    return-void
.end method

.method public static writeToIfChanged(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 41
    move-object v0, p0

    .local v0, "value":Ljava/lang/Object;
    move-object v1, p1

    .local v1, "path":Ljava/lang/Object;
    move-object v9, v1

    invoke-static {v9}, Lgnu/text/Path;->valueOf(Ljava/lang/Object;)Lgnu/text/Path;

    move-result-object v9

    move-object v2, v9

    .line 42
    .local v2, "ppath":Lgnu/text/Path;
    new-instance v9, Ljava/io/ByteArrayOutputStream;

    move-object v12, v9

    move-object v9, v12

    move-object v10, v12

    invoke-direct {v10}, Ljava/io/ByteArrayOutputStream;-><init>()V

    move-object v3, v9

    .line 43
    .local v3, "bout":Ljava/io/ByteArrayOutputStream;
    move-object v9, v0

    move-object v10, v2

    move-object v11, v3

    invoke-static {v9, v10, v11}, Lgnu/kawa/xml/WriteTo;->writeTo(Ljava/lang/Object;Lgnu/text/Path;Ljava/io/OutputStream;)V

    .line 44
    move-object v9, v3

    invoke-virtual {v9}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v9

    move-object v4, v9

    .line 47
    .local v4, "bbuf":[B
    :try_start_0
    new-instance v9, Ljava/io/BufferedInputStream;

    move-object v12, v9

    move-object v9, v12

    move-object v10, v12

    move-object v11, v2

    invoke-virtual {v11}, Lgnu/text/Path;->openInputStream()Ljava/io/InputStream;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    move-object v5, v9

    .line 48
    .local v5, "ins":Ljava/io/InputStream;
    const/4 v9, 0x0

    move v6, v9

    .line 50
    .local v6, "i":I
    :goto_0
    move-object v9, v5

    invoke-virtual {v9}, Ljava/io/InputStream;->read()I

    move-result v9

    move v7, v9

    .line 51
    .local v7, "b":I
    move v9, v6

    move-object v10, v4

    array-length v10, v10

    if-ne v9, v10, :cond_1

    const/4 v9, 0x1

    :goto_1
    move v8, v9

    .line 52
    .local v8, "atend":Z
    move v9, v7

    if-gez v9, :cond_3

    .line 54
    move v9, v8

    if-nez v9, :cond_2

    .line 55
    .line 62
    :cond_0
    :goto_2
    move-object v9, v5

    invoke-virtual {v9}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 67
    .line 68
    .end local v5    # "ins":Ljava/io/InputStream;
    .end local v6    # "i":I
    .end local v7    # "b":I
    .end local v8    # "atend":Z
    :goto_3
    new-instance v9, Ljava/io/BufferedOutputStream;

    move-object v12, v9

    move-object v9, v12

    move-object v10, v12

    move-object v11, v2

    invoke-virtual {v11}, Lgnu/text/Path;->openOutputStream()Ljava/io/OutputStream;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    move-object v5, v9

    .line 70
    .local v5, "fout":Ljava/io/OutputStream;
    move-object v9, v5

    move-object v10, v4

    invoke-virtual {v9, v10}, Ljava/io/OutputStream;->write([B)V

    .line 71
    move-object v9, v5

    invoke-virtual {v9}, Ljava/io/OutputStream;->close()V

    .line 72
    .end local v5    # "fout":Ljava/io/OutputStream;
    :goto_4
    return-void

    .line 51
    .local v5, "ins":Ljava/io/InputStream;
    .restart local v6    # "i":I
    .restart local v7    # "b":I
    :cond_1
    const/4 v9, 0x0

    goto :goto_1

    .line 56
    .restart local v8    # "atend":Z
    :cond_2
    move-object v9, v5

    :try_start_1
    invoke-virtual {v9}, Ljava/io/InputStream;->close()V

    .line 57
    goto :goto_4

    .line 59
    :cond_3
    move v9, v8

    if-nez v9, :cond_0

    move-object v9, v4

    move v10, v6

    add-int/lit8 v6, v6, 0x1

    aget-byte v9, v9, v10
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    move v10, v7

    if-eq v9, v10, :cond_4

    .line 60
    goto :goto_2

    .line 61
    :cond_4
    goto :goto_0

    .line 64
    .end local v5    # "ins":Ljava/io/InputStream;
    .end local v6    # "i":I
    .end local v7    # "b":I
    .end local v8    # "atend":Z
    :catch_0
    move-exception v9

    move-object v5, v9

    goto :goto_3
.end method


# virtual methods
.method public apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 76
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/xml/WriteTo;
    move-object v1, p1

    .local v1, "value":Ljava/lang/Object;
    move-object v2, p2

    .local v2, "fileName":Ljava/lang/Object;
    move-object v3, v0

    iget-boolean v3, v3, Lgnu/kawa/xml/WriteTo;->ifChanged:Z

    if-eqz v3, :cond_0

    .line 77
    move-object v3, v1

    move-object v4, v2

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lgnu/kawa/xml/WriteTo;->writeToIfChanged(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 80
    :goto_0
    sget-object v3, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    move-object v0, v3

    .end local v0    # "this":Lgnu/kawa/xml/WriteTo;
    return-object v0

    .line 79
    .restart local v0    # "this":Lgnu/kawa/xml/WriteTo;
    :cond_0
    move-object v3, v1

    move-object v4, v2

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lgnu/kawa/xml/WriteTo;->writeTo(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0
.end method

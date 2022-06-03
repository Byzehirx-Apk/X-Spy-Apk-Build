.class public final Lcom/google/appinventor/components/runtime/util/IOUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 13
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static closeQuietly(Ljava/lang/String;Ljava/io/Closeable;)V
    .locals 5

    .prologue
    .line 19
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    if-eqz v2, :cond_0

    .line 20
    move-object v2, v1

    :try_start_0
    invoke-interface {v2}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 24
    .line 25
    :cond_0
    :goto_0
    return-void

    .line 22
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 23
    move-object v2, v0

    const-string/jumbo v3, "Failed to close resource"

    move-object v4, v1

    invoke-static {v2, v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v2

    .line 25
    goto :goto_0
.end method

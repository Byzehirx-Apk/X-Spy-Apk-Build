.class Lcom/bumptech/glide/load/data/MediaStoreThumbFetcher$ThumbnailStreamOpener;
.super Ljava/lang/Object;
.source "MediaStoreThumbFetcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/load/data/MediaStoreThumbFetcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ThumbnailStreamOpener"
.end annotation


# static fields
.field private static final DEFAULT_SERVICE:Lcom/bumptech/glide/load/data/MediaStoreThumbFetcher$FileService;


# instance fields
.field private query:Lcom/bumptech/glide/load/data/MediaStoreThumbFetcher$ThumbnailQuery;

.field private final service:Lcom/bumptech/glide/load/data/MediaStoreThumbFetcher$FileService;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 142
    new-instance v0, Lcom/bumptech/glide/load/data/MediaStoreThumbFetcher$FileService;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Lcom/bumptech/glide/load/data/MediaStoreThumbFetcher$FileService;-><init>()V

    sput-object v0, Lcom/bumptech/glide/load/data/MediaStoreThumbFetcher$ThumbnailStreamOpener;->DEFAULT_SERVICE:Lcom/bumptech/glide/load/data/MediaStoreThumbFetcher$FileService;

    return-void
.end method

.method public constructor <init>(Lcom/bumptech/glide/load/data/MediaStoreThumbFetcher$FileService;Lcom/bumptech/glide/load/data/MediaStoreThumbFetcher$ThumbnailQuery;)V
    .locals 5

    .prologue
    .line 150
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/load/data/MediaStoreThumbFetcher$ThumbnailStreamOpener;
    move-object v1, p1

    .local v1, "service":Lcom/bumptech/glide/load/data/MediaStoreThumbFetcher$FileService;
    move-object v2, p2

    .local v2, "query":Lcom/bumptech/glide/load/data/MediaStoreThumbFetcher$ThumbnailQuery;
    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 151
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lcom/bumptech/glide/load/data/MediaStoreThumbFetcher$ThumbnailStreamOpener;->service:Lcom/bumptech/glide/load/data/MediaStoreThumbFetcher$FileService;

    .line 152
    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Lcom/bumptech/glide/load/data/MediaStoreThumbFetcher$ThumbnailStreamOpener;->query:Lcom/bumptech/glide/load/data/MediaStoreThumbFetcher$ThumbnailQuery;

    .line 153
    return-void
.end method

.method public constructor <init>(Lcom/bumptech/glide/load/data/MediaStoreThumbFetcher$ThumbnailQuery;)V
    .locals 5

    .prologue
    .line 147
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/load/data/MediaStoreThumbFetcher$ThumbnailStreamOpener;
    move-object v1, p1

    .local v1, "query":Lcom/bumptech/glide/load/data/MediaStoreThumbFetcher$ThumbnailQuery;
    move-object v2, v0

    sget-object v3, Lcom/bumptech/glide/load/data/MediaStoreThumbFetcher$ThumbnailStreamOpener;->DEFAULT_SERVICE:Lcom/bumptech/glide/load/data/MediaStoreThumbFetcher$FileService;

    move-object v4, v1

    invoke-direct {v2, v3, v4}, Lcom/bumptech/glide/load/data/MediaStoreThumbFetcher$ThumbnailStreamOpener;-><init>(Lcom/bumptech/glide/load/data/MediaStoreThumbFetcher$FileService;Lcom/bumptech/glide/load/data/MediaStoreThumbFetcher$ThumbnailQuery;)V

    .line 148
    return-void
.end method

.method private parseThumbUri(Landroid/database/Cursor;)Landroid/net/Uri;
    .locals 10

    .prologue
    .line 198
    move-object v1, p0

    .local v1, "this":Lcom/bumptech/glide/load/data/MediaStoreThumbFetcher$ThumbnailStreamOpener;
    move-object v2, p1

    .local v2, "cursor":Landroid/database/Cursor;
    const/4 v6, 0x0

    move-object v3, v6

    .line 199
    .local v3, "result":Landroid/net/Uri;
    move-object v6, v2

    const/4 v7, 0x0

    invoke-interface {v6, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    move-object v4, v6

    .line 200
    .local v4, "path":Ljava/lang/String;
    move-object v6, v4

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 201
    move-object v6, v1

    iget-object v6, v6, Lcom/bumptech/glide/load/data/MediaStoreThumbFetcher$ThumbnailStreamOpener;->service:Lcom/bumptech/glide/load/data/MediaStoreThumbFetcher$FileService;

    move-object v7, v4

    invoke-virtual {v6, v7}, Lcom/bumptech/glide/load/data/MediaStoreThumbFetcher$FileService;->get(Ljava/lang/String;)Ljava/io/File;

    move-result-object v6

    move-object v5, v6

    .line 202
    .local v5, "file":Ljava/io/File;
    move-object v6, v1

    iget-object v6, v6, Lcom/bumptech/glide/load/data/MediaStoreThumbFetcher$ThumbnailStreamOpener;->service:Lcom/bumptech/glide/load/data/MediaStoreThumbFetcher$FileService;

    move-object v7, v5

    invoke-virtual {v6, v7}, Lcom/bumptech/glide/load/data/MediaStoreThumbFetcher$FileService;->exists(Ljava/io/File;)Z

    move-result v6

    if-eqz v6, :cond_0

    move-object v6, v1

    iget-object v6, v6, Lcom/bumptech/glide/load/data/MediaStoreThumbFetcher$ThumbnailStreamOpener;->service:Lcom/bumptech/glide/load/data/MediaStoreThumbFetcher$FileService;

    move-object v7, v5

    invoke-virtual {v6, v7}, Lcom/bumptech/glide/load/data/MediaStoreThumbFetcher$FileService;->length(Ljava/io/File;)J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-lez v6, :cond_0

    .line 203
    move-object v6, v5

    invoke-static {v6}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v6

    move-object v3, v6

    .line 206
    .end local v5    # "file":Ljava/io/File;
    :cond_0
    move-object v6, v3

    move-object v1, v6

    .end local v1    # "this":Lcom/bumptech/glide/load/data/MediaStoreThumbFetcher$ThumbnailStreamOpener;
    return-object v1
.end method


# virtual methods
.method public getOrientation(Landroid/content/Context;Landroid/net/Uri;)I
    .locals 12

    .prologue
    .line 156
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/load/data/MediaStoreThumbFetcher$ThumbnailStreamOpener;
    move-object v1, p1

    .local v1, "context":Landroid/content/Context;
    move-object v2, p2

    .local v2, "uri":Landroid/net/Uri;
    const/4 v8, -0x1

    move v3, v8

    .line 157
    .local v3, "orientation":I
    const/4 v8, 0x0

    move-object v4, v8

    .line 159
    .local v4, "is":Ljava/io/InputStream;
    move-object v8, v1

    :try_start_0
    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    move-object v9, v2

    invoke-virtual {v8, v9}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v8

    move-object v4, v8

    .line 160
    new-instance v8, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser;

    move-object v11, v8

    move-object v8, v11

    move-object v9, v11

    move-object v10, v4

    invoke-direct {v9, v10}, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v8}, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser;->getOrientation()I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v8

    move v3, v8

    .line 166
    move-object v8, v4

    if-eqz v8, :cond_0

    .line 168
    move-object v8, v4

    :try_start_1
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 171
    .line 174
    :cond_0
    :goto_0
    move v8, v3

    move v0, v8

    .end local v0    # "this":Lcom/bumptech/glide/load/data/MediaStoreThumbFetcher$ThumbnailStreamOpener;
    return v0

    .line 169
    .restart local v0    # "this":Lcom/bumptech/glide/load/data/MediaStoreThumbFetcher$ThumbnailStreamOpener;
    :catch_0
    move-exception v8

    move-object v5, v8

    .line 171
    goto :goto_0

    .line 161
    :catch_1
    move-exception v8

    move-object v5, v8

    .line 162
    .local v5, "e":Ljava/io/IOException;
    :try_start_2
    const-string/jumbo v8, "MediaStoreThumbFetcher"

    const/4 v9, 0x3

    invoke-static {v8, v9}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 163
    const-string/jumbo v8, "MediaStoreThumbFetcher"

    new-instance v9, Ljava/lang/StringBuilder;

    move-object v11, v9

    move-object v9, v11

    move-object v10, v11

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Failed to open uri: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object v10, v2

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    move-object v10, v5

    invoke-static {v8, v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v8

    .line 166
    :cond_1
    move-object v8, v4

    if-eqz v8, :cond_0

    .line 168
    move-object v8, v4

    :try_start_3
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 171
    goto :goto_0

    .line 169
    :catch_2
    move-exception v8

    move-object v5, v8

    .line 171
    goto :goto_0

    .line 166
    .end local v5    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v8

    move-object v6, v8

    move-object v8, v4

    if-eqz v8, :cond_2

    .line 168
    move-object v8, v4

    :try_start_4
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 171
    :cond_2
    :goto_1
    move-object v8, v6

    throw v8

    .line 169
    :catch_3
    move-exception v8

    move-object v7, v8

    goto :goto_1
.end method

.method public open(Landroid/content/Context;Landroid/net/Uri;)Ljava/io/InputStream;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 178
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/load/data/MediaStoreThumbFetcher$ThumbnailStreamOpener;
    move-object v1, p1

    .local v1, "context":Landroid/content/Context;
    move-object v2, p2

    .local v2, "uri":Landroid/net/Uri;
    const/4 v7, 0x0

    move-object v3, v7

    .line 179
    .local v3, "thumbnailUri":Landroid/net/Uri;
    const/4 v7, 0x0

    move-object v4, v7

    .line 181
    .local v4, "inputStream":Ljava/io/InputStream;
    move-object v7, v0

    iget-object v7, v7, Lcom/bumptech/glide/load/data/MediaStoreThumbFetcher$ThumbnailStreamOpener;->query:Lcom/bumptech/glide/load/data/MediaStoreThumbFetcher$ThumbnailQuery;

    move-object v8, v1

    move-object v9, v2

    invoke-interface {v7, v8, v9}, Lcom/bumptech/glide/load/data/MediaStoreThumbFetcher$ThumbnailQuery;->queryPath(Landroid/content/Context;Landroid/net/Uri;)Landroid/database/Cursor;

    move-result-object v7

    move-object v5, v7

    .line 183
    .local v5, "cursor":Landroid/database/Cursor;
    move-object v7, v5

    if-eqz v7, :cond_0

    move-object v7, v5

    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 184
    move-object v7, v0

    move-object v8, v5

    invoke-direct {v7, v8}, Lcom/bumptech/glide/load/data/MediaStoreThumbFetcher$ThumbnailStreamOpener;->parseThumbUri(Landroid/database/Cursor;)Landroid/net/Uri;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v7

    move-object v3, v7

    .line 187
    :cond_0
    move-object v7, v5

    if-eqz v7, :cond_1

    .line 188
    move-object v7, v5

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 191
    :cond_1
    move-object v7, v3

    if-eqz v7, :cond_2

    .line 192
    move-object v7, v1

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    move-object v8, v3

    invoke-virtual {v7, v8}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v7

    move-object v4, v7

    .line 194
    :cond_2
    move-object v7, v4

    move-object v0, v7

    .end local v0    # "this":Lcom/bumptech/glide/load/data/MediaStoreThumbFetcher$ThumbnailStreamOpener;
    return-object v0

    .line 187
    .restart local v0    # "this":Lcom/bumptech/glide/load/data/MediaStoreThumbFetcher$ThumbnailStreamOpener;
    :catchall_0
    move-exception v7

    move-object v6, v7

    move-object v7, v5

    if-eqz v7, :cond_3

    .line 188
    move-object v7, v5

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_3
    move-object v7, v6

    throw v7
.end method

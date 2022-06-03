.class public Lcom/bumptech/glide/load/data/StreamLocalUriFetcher;
.super Lcom/bumptech/glide/load/data/LocalUriFetcher;
.source "StreamLocalUriFetcher.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/bumptech/glide/load/data/LocalUriFetcher",
        "<",
        "Ljava/io/InputStream;",
        ">;"
    }
.end annotation


# static fields
.field private static final ID_CONTACT:I = 0x3

.field private static final ID_DISPLAY_PHOTO:I = 0x4

.field private static final ID_LOOKUP:I = 0x1

.field private static final ID_THUMBNAIL:I = 0x2

.field private static final URI_MATCHER:Landroid/content/UriMatcher;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 38
    new-instance v0, Landroid/content/UriMatcher;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, -0x1

    invoke-direct {v1, v2}, Landroid/content/UriMatcher;-><init>(I)V

    sput-object v0, Lcom/bumptech/glide/load/data/StreamLocalUriFetcher;->URI_MATCHER:Landroid/content/UriMatcher;

    .line 39
    sget-object v0, Lcom/bumptech/glide/load/data/StreamLocalUriFetcher;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string/jumbo v1, "com.android.contacts"

    const-string/jumbo v2, "contacts/lookup/*/#"

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 40
    sget-object v0, Lcom/bumptech/glide/load/data/StreamLocalUriFetcher;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string/jumbo v1, "com.android.contacts"

    const-string/jumbo v2, "contacts/lookup/*"

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 41
    sget-object v0, Lcom/bumptech/glide/load/data/StreamLocalUriFetcher;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string/jumbo v1, "com.android.contacts"

    const-string/jumbo v2, "contacts/#/photo"

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 42
    sget-object v0, Lcom/bumptech/glide/load/data/StreamLocalUriFetcher;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string/jumbo v1, "com.android.contacts"

    const-string/jumbo v2, "contacts/#"

    const/4 v3, 0x3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 43
    sget-object v0, Lcom/bumptech/glide/load/data/StreamLocalUriFetcher;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string/jumbo v1, "com.android.contacts"

    const-string/jumbo v2, "contacts/#/display_photo"

    const/4 v3, 0x4

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 44
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/net/Uri;)V
    .locals 6

    .prologue
    .line 47
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/load/data/StreamLocalUriFetcher;
    move-object v1, p1

    .local v1, "context":Landroid/content/Context;
    move-object v2, p2

    .local v2, "uri":Landroid/net/Uri;
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-direct {v3, v4, v5}, Lcom/bumptech/glide/load/data/LocalUriFetcher;-><init>(Landroid/content/Context;Landroid/net/Uri;)V

    .line 48
    return-void
.end method

.method private loadResourceFromUri(Landroid/net/Uri;Landroid/content/ContentResolver;I)Ljava/io/InputStream;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 63
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/load/data/StreamLocalUriFetcher;
    move-object v1, p1

    .local v1, "uri":Landroid/net/Uri;
    move-object v2, p2

    .local v2, "contentResolver":Landroid/content/ContentResolver;
    move v3, p3

    .local v3, "matchedUri":I
    move v4, v3

    packed-switch v4, :pswitch_data_0

    .line 78
    :pswitch_0
    move-object v4, v2

    move-object v5, v1

    invoke-virtual {v4, v5}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v4

    move-object v0, v4

    .end local v0    # "this":Lcom/bumptech/glide/load/data/StreamLocalUriFetcher;
    :goto_0
    return-object v0

    .line 67
    .restart local v0    # "this":Lcom/bumptech/glide/load/data/StreamLocalUriFetcher;
    :pswitch_1
    move v4, v3

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    .line 68
    move-object v4, v2

    move-object v5, v1

    invoke-static {v4, v5}, Landroid/provider/ContactsContract$Contacts;->lookupContact(Landroid/content/ContentResolver;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v4

    move-object v1, v4

    .line 69
    move-object v4, v1

    if-nez v4, :cond_0

    .line 70
    new-instance v4, Ljava/io/FileNotFoundException;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    const-string/jumbo v6, "Contact cannot be found"

    invoke-direct {v5, v6}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 73
    :cond_0
    move-object v4, v0

    move-object v5, v2

    move-object v6, v1

    invoke-direct {v4, v5, v6}, Lcom/bumptech/glide/load/data/StreamLocalUriFetcher;->openContactPhotoInputStream(Landroid/content/ContentResolver;Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v4

    move-object v0, v4

    goto :goto_0

    .line 63
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private openContactPhotoInputStream(Landroid/content/ContentResolver;Landroid/net/Uri;)Ljava/io/InputStream;
    .locals 6
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    .prologue
    .line 84
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/load/data/StreamLocalUriFetcher;
    move-object v1, p1

    .local v1, "contentResolver":Landroid/content/ContentResolver;
    move-object v2, p2

    .local v2, "contactUri":Landroid/net/Uri;
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0xe

    if-ge v3, v4, :cond_0

    .line 85
    move-object v3, v1

    move-object v4, v2

    invoke-static {v3, v4}, Landroid/provider/ContactsContract$Contacts;->openContactPhotoInputStream(Landroid/content/ContentResolver;Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v3

    move-object v0, v3

    .line 87
    .end local v0    # "this":Lcom/bumptech/glide/load/data/StreamLocalUriFetcher;
    :goto_0
    return-object v0

    .restart local v0    # "this":Lcom/bumptech/glide/load/data/StreamLocalUriFetcher;
    :cond_0
    move-object v3, v1

    move-object v4, v2

    const/4 v5, 0x1

    invoke-static {v3, v4, v5}, Landroid/provider/ContactsContract$Contacts;->openContactPhotoInputStream(Landroid/content/ContentResolver;Landroid/net/Uri;Z)Ljava/io/InputStream;

    move-result-object v3

    move-object v0, v3

    goto :goto_0
.end method


# virtual methods
.method protected close(Ljava/io/InputStream;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 58
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/load/data/StreamLocalUriFetcher;
    move-object v1, p1

    .local v1, "data":Ljava/io/InputStream;
    move-object v2, v1

    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .line 59
    return-void
.end method

.method protected bridge synthetic close(Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 21
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/load/data/StreamLocalUriFetcher;
    move-object v1, p1

    .local v1, "x0":Ljava/lang/Object;
    move-object v2, v0

    move-object v3, v1

    check-cast v3, Ljava/io/InputStream;

    invoke-virtual {v2, v3}, Lcom/bumptech/glide/load/data/StreamLocalUriFetcher;->close(Ljava/io/InputStream;)V

    return-void
.end method

.method protected loadResource(Landroid/net/Uri;Landroid/content/ContentResolver;)Ljava/io/InputStream;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 52
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/load/data/StreamLocalUriFetcher;
    move-object v1, p1

    .local v1, "uri":Landroid/net/Uri;
    move-object v2, p2

    .local v2, "contentResolver":Landroid/content/ContentResolver;
    sget-object v4, Lcom/bumptech/glide/load/data/StreamLocalUriFetcher;->URI_MATCHER:Landroid/content/UriMatcher;

    move-object v5, v1

    invoke-virtual {v4, v5}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v4

    move v3, v4

    .line 53
    .local v3, "matchedUri":I
    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    move v7, v3

    invoke-direct {v4, v5, v6, v7}, Lcom/bumptech/glide/load/data/StreamLocalUriFetcher;->loadResourceFromUri(Landroid/net/Uri;Landroid/content/ContentResolver;I)Ljava/io/InputStream;

    move-result-object v4

    move-object v0, v4

    .end local v0    # "this":Lcom/bumptech/glide/load/data/StreamLocalUriFetcher;
    return-object v0
.end method

.method protected bridge synthetic loadResource(Landroid/net/Uri;Landroid/content/ContentResolver;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 21
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/load/data/StreamLocalUriFetcher;
    move-object v1, p1

    .local v1, "x0":Landroid/net/Uri;
    move-object v2, p2

    .local v2, "x1":Landroid/content/ContentResolver;
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-virtual {v3, v4, v5}, Lcom/bumptech/glide/load/data/StreamLocalUriFetcher;->loadResource(Landroid/net/Uri;Landroid/content/ContentResolver;)Ljava/io/InputStream;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Lcom/bumptech/glide/load/data/StreamLocalUriFetcher;
    return-object v0
.end method

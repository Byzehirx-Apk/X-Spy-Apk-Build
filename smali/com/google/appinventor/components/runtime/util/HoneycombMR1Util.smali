.class public Lcom/google/appinventor/components/runtime/util/HoneycombMR1Util;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 27
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 28
    return-void
.end method

.method public static getContactIdIndex(Landroid/database/Cursor;)I
    .locals 3

    .prologue
    .line 115
    move-object v0, p0

    move-object v1, v0

    const-string/jumbo v2, "contact_id"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    move v0, v1

    return v0
.end method

.method public static getContactProjection()[Ljava/lang/String;
    .locals 5

    .prologue
    .line 55
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x0

    const-string/jumbo v3, "_id"

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x1

    const-string/jumbo v3, "display_name"

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x2

    const-string/jumbo v3, "photo_thumb_uri"

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x3

    const-string/jumbo v3, "photo_uri"

    aput-object v3, v1, v2

    .line 61
    return-object v0
.end method

.method public static getContentUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 34
    sget-object v0, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    return-object v0
.end method

.method public static getDataContentUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 48
    sget-object v0, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    return-object v0
.end method

.method public static getDataCursor(Ljava/lang/String;Landroid/app/Activity;[Ljava/lang/String;)Landroid/database/Cursor;
    .locals 12

    .prologue
    .line 189
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v1

    invoke-virtual {v3}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    move-object v5, v2

    const-string/jumbo v6, "contact_id=? AND (mimetype=? OR mimetype=?)"

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/String;

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    const/4 v9, 0x0

    move-object v10, v0

    aput-object v10, v8, v9

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    const/4 v9, 0x1

    const-string/jumbo v10, "vnd.android.cursor.item/phone_v2"

    aput-object v10, v8, v9

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    const/4 v9, 0x2

    const-string/jumbo v10, "vnd.android.cursor.item/email_v2"

    aput-object v10, v8, v9

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    .line 195
    move-object v0, v3

    return-object v0
.end method

.method public static getDataMimeType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 182
    const-string/jumbo v0, "mimetype"

    return-object v0
.end method

.method public static getDataProjection()[Ljava/lang/String;
    .locals 5

    .prologue
    .line 81
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x0

    const-string/jumbo v3, "mimetype"

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x1

    const-string/jumbo v3, "data1"

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x2

    const-string/jumbo v3, "data2"

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x3

    const-string/jumbo v3, "data1"

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x4

    const-string/jumbo v3, "data2"

    aput-object v3, v1, v2

    .line 88
    return-object v0
.end method

.method public static getDisplayName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 168
    const-string/jumbo v0, "display_name"

    return-object v0
.end method

.method public static getEmailAdapterProjection()[Ljava/lang/String;
    .locals 5

    .prologue
    .line 95
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x0

    const-string/jumbo v3, "_id"

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x1

    const-string/jumbo v3, "display_name"

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x2

    const-string/jumbo v3, "data1"

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x3

    const-string/jumbo v3, "mimetype"

    aput-object v3, v1, v2

    .line 101
    return-object v0
.end method

.method public static getEmailAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 175
    const-string/jumbo v0, "data1"

    return-object v0
.end method

.method public static getEmailIndex(Landroid/database/Cursor;)I
    .locals 3

    .prologue
    .line 144
    move-object v0, p0

    move-object v1, v0

    const-string/jumbo v2, "data1"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    move v0, v1

    return v0
.end method

.method public static getEmailType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 161
    const-string/jumbo v0, "vnd.android.cursor.item/email_v2"

    return-object v0
.end method

.method public static getIdIndex(Landroid/database/Cursor;)I
    .locals 3

    .prologue
    .line 108
    move-object v0, p0

    move-object v1, v0

    const-string/jumbo v2, "_id"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    move v0, v1

    return v0
.end method

.method public static getMimeIndex(Landroid/database/Cursor;)I
    .locals 3

    .prologue
    .line 148
    move-object v0, p0

    move-object v1, v0

    const-string/jumbo v2, "mimetype"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    move v0, v1

    return v0
.end method

.method public static getNameIndex(Landroid/database/Cursor;)I
    .locals 3

    .prologue
    .line 122
    move-object v0, p0

    move-object v1, v0

    const-string/jumbo v2, "display_name"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    move v0, v1

    return v0
.end method

.method public static getNameProjection()[Ljava/lang/String;
    .locals 5

    .prologue
    .line 68
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x0

    const-string/jumbo v3, "contact_id"

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x1

    const-string/jumbo v3, "display_name"

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x2

    const-string/jumbo v3, "photo_thumb_uri"

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x3

    const-string/jumbo v3, "data1"

    aput-object v3, v1, v2

    .line 74
    return-object v0
.end method

.method public static getPhoneContentUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 41
    sget-object v0, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->CONTENT_URI:Landroid/net/Uri;

    return-object v0
.end method

.method public static getPhoneIndex(Landroid/database/Cursor;)I
    .locals 3

    .prologue
    .line 140
    move-object v0, p0

    move-object v1, v0

    const-string/jumbo v2, "data1"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    move v0, v1

    return v0
.end method

.method public static getPhoneType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 154
    const-string/jumbo v0, "vnd.android.cursor.item/phone_v2"

    return-object v0
.end method

.method public static getPhotoIndex(Landroid/database/Cursor;)I
    .locals 3

    .prologue
    .line 136
    move-object v0, p0

    move-object v1, v0

    const-string/jumbo v2, "photo_uri"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    move v0, v1

    return v0
.end method

.method public static getThumbnailIndex(Landroid/database/Cursor;)I
    .locals 3

    .prologue
    .line 129
    move-object v0, p0

    move-object v1, v0

    const-string/jumbo v2, "photo_thumb_uri"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    move v0, v1

    return v0
.end method

.method public static getTimesContacted()Ljava/lang/String;
    .locals 1

    .prologue
    .line 209
    const-string/jumbo v0, "times_contacted"

    return-object v0
.end method

.method public static openContactPhotoInputStreamHelper(Landroid/content/ContentResolver;Landroid/net/Uri;)Ljava/io/InputStream;
    .locals 4

    .prologue
    .line 202
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-static {v2, v3}, Landroid/provider/ContactsContract$Contacts;->openContactPhotoInputStream(Landroid/content/ContentResolver;Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v2

    move-object v0, v2

    return-object v0
.end method

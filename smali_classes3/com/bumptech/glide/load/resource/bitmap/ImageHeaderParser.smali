.class public Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser;
.super Ljava/lang/Object;
.source "ImageHeaderParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$StreamReader;,
        Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$RandomAccessReader;,
        Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$ImageType;
    }
.end annotation


# static fields
.field private static final BYTES_PER_FORMAT:[I

.field private static final EXIF_MAGIC_NUMBER:I = 0xffd8

.field private static final EXIF_SEGMENT_TYPE:I = 0xe1

.field private static final GIF_HEADER:I = 0x474946

.field private static final INTEL_TIFF_MAGIC_NUMBER:I = 0x4949

.field private static final JPEG_EXIF_SEGMENT_PREAMBLE:Ljava/lang/String; = "Exif\u0000\u0000"

.field private static final JPEG_EXIF_SEGMENT_PREAMBLE_BYTES:[B

.field private static final MARKER_EOI:I = 0xd9

.field private static final MOTOROLA_TIFF_MAGIC_NUMBER:I = 0x4d4d

.field private static final ORIENTATION_TAG_TYPE:I = 0x112

.field private static final PNG_HEADER:I = -0x76afb1b9

.field private static final SEGMENT_SOS:I = 0xda

.field private static final SEGMENT_START_ID:I = 0xff

.field private static final TAG:Ljava/lang/String; = "ImageHeaderParser"


# instance fields
.field private final streamReader:Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$StreamReader;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 62
    const/16 v2, 0xd

    new-array v2, v2, [I

    fill-array-data v2, :array_0

    sput-object v2, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser;->BYTES_PER_FORMAT:[I

    .line 67
    const/4 v2, 0x0

    new-array v2, v2, [B

    move-object v0, v2

    .line 69
    .local v0, "bytes":[B
    :try_start_0
    const-string/jumbo v2, "Exif\u0000\u0000"

    const-string/jumbo v3, "UTF-8"

    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    move-object v0, v2

    .line 72
    .line 73
    :goto_0
    move-object v2, v0

    sput-object v2, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser;->JPEG_EXIF_SEGMENT_PREAMBLE_BYTES:[B

    .line 74
    return-void

    .line 70
    :catch_0
    move-exception v2

    move-object v1, v2

    goto :goto_0

    .line 62
    nop

    :array_0
    .array-data 4
        0x0
        0x1
        0x1
        0x2
        0x4
        0x8
        0x1
        0x1
        0x2
        0x4
        0x8
        0x4
        0x8
    .end array-data
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 7

    .prologue
    .line 76
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser;
    move-object v1, p1

    .local v1, "is":Ljava/io/InputStream;
    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 77
    move-object v2, v0

    new-instance v3, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$StreamReader;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v1

    invoke-direct {v4, v5}, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$StreamReader;-><init>(Ljava/io/InputStream;)V

    iput-object v3, v2, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser;->streamReader:Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$StreamReader;

    .line 78
    return-void
.end method

.method private static calcTagOffset(II)I
    .locals 5

    .prologue
    .line 291
    move v0, p0

    .local v0, "ifdOffset":I
    move v1, p1

    .local v1, "tagIndex":I
    move v2, v0

    const/4 v3, 0x2

    add-int/lit8 v2, v2, 0x2

    const/16 v3, 0xc

    move v4, v1

    mul-int/2addr v3, v4

    add-int/2addr v2, v3

    move v0, v2

    .end local v0    # "ifdOffset":I
    return v0
.end method

.method private getExifSegment()[B
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 150
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser;
    :goto_0
    move-object v6, v0

    iget-object v6, v6, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser;->streamReader:Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$StreamReader;

    invoke-virtual {v6}, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$StreamReader;->getUInt8()S

    move-result v6

    move v1, v6

    .line 152
    .local v1, "segmentId":S
    move v6, v1

    const/16 v7, 0xff

    if-eq v6, v7, :cond_1

    .line 153
    const-string/jumbo v6, "ImageHeaderParser"

    const/4 v7, 0x3

    invoke-static {v6, v7}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 154
    const-string/jumbo v6, "ImageHeaderParser"

    new-instance v7, Ljava/lang/StringBuilder;

    move-object v10, v7

    move-object v7, v10

    move-object v8, v10

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Unknown segmentId="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move v8, v1

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    .line 156
    :cond_0
    const/4 v6, 0x0

    move-object v0, v6

    .line 196
    .end local v0    # "this":Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser;
    :goto_1
    return-object v0

    .line 159
    .restart local v0    # "this":Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser;
    :cond_1
    move-object v6, v0

    iget-object v6, v6, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser;->streamReader:Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$StreamReader;

    invoke-virtual {v6}, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$StreamReader;->getUInt8()S

    move-result v6

    move v2, v6

    .line 161
    .local v2, "segmentType":S
    move v6, v2

    const/16 v7, 0xda

    if-ne v6, v7, :cond_2

    .line 162
    const/4 v6, 0x0

    move-object v0, v6

    goto :goto_1

    .line 163
    :cond_2
    move v6, v2

    const/16 v7, 0xd9

    if-ne v6, v7, :cond_4

    .line 164
    const-string/jumbo v6, "ImageHeaderParser"

    const/4 v7, 0x3

    invoke-static {v6, v7}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 165
    const-string/jumbo v6, "ImageHeaderParser"

    const-string/jumbo v7, "Found MARKER_EOI in exif segment"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    .line 167
    :cond_3
    const/4 v6, 0x0

    move-object v0, v6

    goto :goto_1

    .line 171
    :cond_4
    move-object v6, v0

    iget-object v6, v6, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser;->streamReader:Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$StreamReader;

    invoke-virtual {v6}, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$StreamReader;->getUInt16()I

    move-result v6

    const/4 v7, 0x2

    add-int/lit8 v6, v6, -0x2

    move v3, v6

    .line 173
    .local v3, "segmentLength":I
    move v6, v2

    const/16 v7, 0xe1

    if-eq v6, v7, :cond_7

    .line 174
    move-object v6, v0

    iget-object v6, v6, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser;->streamReader:Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$StreamReader;

    move v7, v3

    int-to-long v7, v7

    invoke-virtual {v6, v7, v8}, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$StreamReader;->skip(J)J

    move-result-wide v6

    move-wide v4, v6

    .line 175
    .local v4, "skipped":J
    move-wide v6, v4

    move v8, v3

    int-to-long v8, v8

    cmp-long v6, v6, v8

    if-eqz v6, :cond_6

    .line 176
    const-string/jumbo v6, "ImageHeaderParser"

    const/4 v7, 0x3

    invoke-static {v6, v7}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 177
    const-string/jumbo v6, "ImageHeaderParser"

    new-instance v7, Ljava/lang/StringBuilder;

    move-object v10, v7

    move-object v7, v10

    move-object v8, v10

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Unable to skip enough data, type: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move v8, v2

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ", wanted to skip: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move v8, v3

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ", but actually skipped: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-wide v8, v4

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    .line 182
    :cond_5
    const/4 v6, 0x0

    move-object v0, v6

    goto/16 :goto_1

    .line 184
    :cond_6
    goto/16 :goto_0

    .line 185
    .end local v4    # "skipped":J
    :cond_7
    move v6, v3

    new-array v6, v6, [B

    move-object v4, v6

    .line 186
    .local v4, "segmentData":[B
    move-object v6, v0

    iget-object v6, v6, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser;->streamReader:Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$StreamReader;

    move-object v7, v4

    invoke-virtual {v6, v7}, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$StreamReader;->read([B)I

    move-result v6

    move v5, v6

    .line 187
    .local v5, "read":I
    move v6, v5

    move v7, v3

    if-eq v6, v7, :cond_9

    .line 188
    const-string/jumbo v6, "ImageHeaderParser"

    const/4 v7, 0x3

    invoke-static {v6, v7}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 189
    const-string/jumbo v6, "ImageHeaderParser"

    new-instance v7, Ljava/lang/StringBuilder;

    move-object v10, v7

    move-object v7, v10

    move-object v8, v10

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Unable to read segment data, type: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move v8, v2

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ", length: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move v8, v3

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ", actually read: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move v8, v5

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    .line 194
    :cond_8
    const/4 v6, 0x0

    move-object v0, v6

    goto/16 :goto_1

    .line 196
    :cond_9
    move-object v6, v4

    move-object v0, v6

    goto/16 :goto_1
.end method

.method private static handles(I)Z
    .locals 3

    .prologue
    .line 295
    move v0, p0

    .local v0, "imageMagicNumber":I
    move v1, v0

    const v2, 0xffd8

    and-int/2addr v1, v2

    const v2, 0xffd8

    if-eq v1, v2, :cond_0

    move v1, v0

    const/16 v2, 0x4d4d

    if-eq v1, v2, :cond_0

    move v1, v0

    const/16 v2, 0x4949

    if-ne v1, v2, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "imageMagicNumber":I
    return v0

    .restart local v0    # "imageMagicNumber":I
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static parseExifSegment(Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$RandomAccessReader;)I
    .locals 17

    .prologue
    .line 203
    move-object/from16 v0, p0

    .local v0, "segmentData":Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$RandomAccessReader;
    const-string/jumbo v13, "Exif\u0000\u0000"

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v13

    move v1, v13

    .line 205
    .local v1, "headerOffsetSize":I
    move-object v13, v0

    move v14, v1

    invoke-virtual {v13, v14}, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$RandomAccessReader;->getInt16(I)S

    move-result v13

    move v2, v13

    .line 207
    .local v2, "byteOrderIdentifier":S
    move v13, v2

    const/16 v14, 0x4d4d

    if-ne v13, v14, :cond_1

    .line 208
    sget-object v13, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    move-object v3, v13

    .line 218
    .local v3, "byteOrder":Ljava/nio/ByteOrder;
    :goto_0
    move-object v13, v0

    move-object v14, v3

    invoke-virtual {v13, v14}, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$RandomAccessReader;->order(Ljava/nio/ByteOrder;)V

    .line 220
    move-object v13, v0

    move v14, v1

    const/4 v15, 0x4

    add-int/lit8 v14, v14, 0x4

    invoke-virtual {v13, v14}, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$RandomAccessReader;->getInt32(I)I

    move-result v13

    move v14, v1

    add-int/2addr v13, v14

    move v4, v13

    .line 221
    .local v4, "firstIfdOffset":I
    move-object v13, v0

    move v14, v4

    invoke-virtual {v13, v14}, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$RandomAccessReader;->getInt16(I)S

    move-result v13

    move v5, v13

    .line 224
    .local v5, "tagCount":I
    const/4 v13, 0x0

    move v10, v13

    .local v10, "i":I
    :goto_1
    move v13, v10

    move v14, v5

    if-ge v13, v14, :cond_e

    .line 225
    move v13, v4

    move v14, v10

    invoke-static {v13, v14}, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser;->calcTagOffset(II)I

    move-result v13

    move v6, v13

    .line 227
    .local v6, "tagOffset":I
    move-object v13, v0

    move v14, v6

    invoke-virtual {v13, v14}, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$RandomAccessReader;->getInt16(I)S

    move-result v13

    move v7, v13

    .line 230
    .local v7, "tagType":I
    move v13, v7

    const/16 v14, 0x112

    if-eq v13, v14, :cond_4

    .line 231
    .line 224
    :cond_0
    :goto_2
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 209
    .end local v3    # "byteOrder":Ljava/nio/ByteOrder;
    .end local v4    # "firstIfdOffset":I
    .end local v5    # "tagCount":I
    .end local v6    # "tagOffset":I
    .end local v7    # "tagType":I
    .end local v10    # "i":I
    :cond_1
    move v13, v2

    const/16 v14, 0x4949

    if-ne v13, v14, :cond_2

    .line 210
    sget-object v13, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    move-object v3, v13

    .restart local v3    # "byteOrder":Ljava/nio/ByteOrder;
    goto :goto_0

    .line 212
    .end local v3    # "byteOrder":Ljava/nio/ByteOrder;
    :cond_2
    const-string/jumbo v13, "ImageHeaderParser"

    const/4 v14, 0x3

    invoke-static {v13, v14}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v13

    if-eqz v13, :cond_3

    .line 213
    const-string/jumbo v13, "ImageHeaderParser"

    new-instance v14, Ljava/lang/StringBuilder;

    move-object/from16 v16, v14

    move-object/from16 v14, v16

    move-object/from16 v15, v16

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "Unknown endianness = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move v15, v2

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result v13

    .line 215
    :cond_3
    sget-object v13, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    move-object v3, v13

    .restart local v3    # "byteOrder":Ljava/nio/ByteOrder;
    goto :goto_0

    .line 234
    .restart local v4    # "firstIfdOffset":I
    .restart local v5    # "tagCount":I
    .restart local v6    # "tagOffset":I
    .restart local v7    # "tagType":I
    .restart local v10    # "i":I
    :cond_4
    move-object v13, v0

    move v14, v6

    const/4 v15, 0x2

    add-int/lit8 v14, v14, 0x2

    invoke-virtual {v13, v14}, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$RandomAccessReader;->getInt16(I)S

    move-result v13

    move v8, v13

    .line 237
    .local v8, "formatCode":I
    move v13, v8

    const/4 v14, 0x1

    if-lt v13, v14, :cond_5

    move v13, v8

    const/16 v14, 0xc

    if-le v13, v14, :cond_6

    .line 238
    :cond_5
    const-string/jumbo v13, "ImageHeaderParser"

    const/4 v14, 0x3

    invoke-static {v13, v14}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v13

    if-eqz v13, :cond_0

    .line 239
    const-string/jumbo v13, "ImageHeaderParser"

    new-instance v14, Ljava/lang/StringBuilder;

    move-object/from16 v16, v14

    move-object/from16 v14, v16

    move-object/from16 v15, v16

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "Got invalid format code="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move v15, v8

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result v13

    goto :goto_2

    .line 244
    :cond_6
    move-object v13, v0

    move v14, v6

    const/4 v15, 0x4

    add-int/lit8 v14, v14, 0x4

    invoke-virtual {v13, v14}, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$RandomAccessReader;->getInt32(I)I

    move-result v13

    move v9, v13

    .line 246
    .local v9, "componentCount":I
    move v13, v9

    if-gez v13, :cond_7

    .line 247
    const-string/jumbo v13, "ImageHeaderParser"

    const/4 v14, 0x3

    invoke-static {v13, v14}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v13

    if-eqz v13, :cond_0

    .line 248
    const-string/jumbo v13, "ImageHeaderParser"

    const-string/jumbo v14, "Negative tiff component count"

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result v13

    goto/16 :goto_2

    .line 253
    :cond_7
    const-string/jumbo v13, "ImageHeaderParser"

    const/4 v14, 0x3

    invoke-static {v13, v14}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v13

    if-eqz v13, :cond_8

    .line 254
    const-string/jumbo v13, "ImageHeaderParser"

    new-instance v14, Ljava/lang/StringBuilder;

    move-object/from16 v16, v14

    move-object/from16 v14, v16

    move-object/from16 v15, v16

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "Got tagIndex="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move v15, v10

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, " tagType="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move v15, v7

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, " formatCode="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move v15, v8

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, " componentCount="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move v15, v9

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result v13

    .line 258
    :cond_8
    move v13, v9

    sget-object v14, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser;->BYTES_PER_FORMAT:[I

    move v15, v8

    aget v14, v14, v15

    add-int/2addr v13, v14

    move v11, v13

    .line 260
    .local v11, "byteCount":I
    move v13, v11

    const/4 v14, 0x4

    if-le v13, v14, :cond_9

    .line 261
    const-string/jumbo v13, "ImageHeaderParser"

    const/4 v14, 0x3

    invoke-static {v13, v14}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v13

    if-eqz v13, :cond_0

    .line 262
    const-string/jumbo v13, "ImageHeaderParser"

    new-instance v14, Ljava/lang/StringBuilder;

    move-object/from16 v16, v14

    move-object/from16 v14, v16

    move-object/from16 v15, v16

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "Got byte count > 4, not orientation, continuing, formatCode="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move v15, v8

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result v13

    goto/16 :goto_2

    .line 267
    :cond_9
    move v13, v6

    const/16 v14, 0x8

    add-int/lit8 v13, v13, 0x8

    move v12, v13

    .line 269
    .local v12, "tagValueOffset":I
    move v13, v12

    if-ltz v13, :cond_a

    move v13, v12

    move-object v14, v0

    invoke-virtual {v14}, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$RandomAccessReader;->length()I

    move-result v14

    if-le v13, v14, :cond_b

    .line 270
    :cond_a
    const-string/jumbo v13, "ImageHeaderParser"

    const/4 v14, 0x3

    invoke-static {v13, v14}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v13

    if-eqz v13, :cond_0

    .line 271
    const-string/jumbo v13, "ImageHeaderParser"

    new-instance v14, Ljava/lang/StringBuilder;

    move-object/from16 v16, v14

    move-object/from16 v14, v16

    move-object/from16 v15, v16

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "Illegal tagValueOffset="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move v15, v12

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, " tagType="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move v15, v7

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result v13

    goto/16 :goto_2

    .line 276
    :cond_b
    move v13, v11

    if-ltz v13, :cond_c

    move v13, v12

    move v14, v11

    add-int/2addr v13, v14

    move-object v14, v0

    invoke-virtual {v14}, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$RandomAccessReader;->length()I

    move-result v14

    if-le v13, v14, :cond_d

    .line 277
    :cond_c
    const-string/jumbo v13, "ImageHeaderParser"

    const/4 v14, 0x3

    invoke-static {v13, v14}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v13

    if-eqz v13, :cond_0

    .line 278
    const-string/jumbo v13, "ImageHeaderParser"

    new-instance v14, Ljava/lang/StringBuilder;

    move-object/from16 v16, v14

    move-object/from16 v14, v16

    move-object/from16 v15, v16

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "Illegal number of bytes for TI tag data tagType="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move v15, v7

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result v13

    goto/16 :goto_2

    .line 284
    :cond_d
    move-object v13, v0

    move v14, v12

    invoke-virtual {v13, v14}, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$RandomAccessReader;->getInt16(I)S

    move-result v13

    move v0, v13

    .line 287
    .end local v0    # "segmentData":Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$RandomAccessReader;
    .end local v6    # "tagOffset":I
    .end local v7    # "tagType":I
    .end local v8    # "formatCode":I
    .end local v9    # "componentCount":I
    .end local v11    # "byteCount":I
    .end local v12    # "tagValueOffset":I
    :goto_3
    return v0

    .restart local v0    # "segmentData":Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$RandomAccessReader;
    :cond_e
    const/4 v13, -0x1

    move v0, v13

    goto :goto_3
.end method


# virtual methods
.method public getOrientation()I
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 120
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser;
    move-object v5, v0

    iget-object v5, v5, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser;->streamReader:Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$StreamReader;

    invoke-virtual {v5}, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$StreamReader;->getUInt16()I

    move-result v5

    move v1, v5

    .line 122
    .local v1, "magicNumber":I
    move v5, v1

    invoke-static {v5}, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser;->handles(I)Z

    move-result v5

    if-nez v5, :cond_0

    .line 123
    const/4 v5, -0x1

    move v0, v5

    .line 141
    .end local v0    # "this":Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser;
    :goto_0
    return v0

    .line 125
    .restart local v0    # "this":Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser;
    :cond_0
    move-object v5, v0

    invoke-direct {v5}, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser;->getExifSegment()[B

    move-result-object v5

    move-object v2, v5

    .line 126
    .local v2, "exifData":[B
    move-object v5, v2

    if-eqz v5, :cond_2

    move-object v5, v2

    array-length v5, v5

    sget-object v6, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser;->JPEG_EXIF_SEGMENT_PREAMBLE_BYTES:[B

    array-length v6, v6

    if-le v5, v6, :cond_2

    const/4 v5, 0x1

    :goto_1
    move v3, v5

    .line 129
    .local v3, "hasJpegExifPreamble":Z
    move v5, v3

    if-eqz v5, :cond_1

    .line 130
    const/4 v5, 0x0

    move v4, v5

    .local v4, "i":I
    :goto_2
    move v5, v4

    sget-object v6, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser;->JPEG_EXIF_SEGMENT_PREAMBLE_BYTES:[B

    array-length v6, v6

    if-ge v5, v6, :cond_1

    .line 131
    move-object v5, v2

    move v6, v4

    aget-byte v5, v5, v6

    sget-object v6, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser;->JPEG_EXIF_SEGMENT_PREAMBLE_BYTES:[B

    move v7, v4

    aget-byte v6, v6, v7

    if-eq v5, v6, :cond_3

    .line 132
    const/4 v5, 0x0

    move v3, v5

    .line 138
    .end local v4    # "i":I
    :cond_1
    move v5, v3

    if-eqz v5, :cond_4

    .line 139
    new-instance v5, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$RandomAccessReader;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    move-object v7, v2

    invoke-direct {v6, v7}, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$RandomAccessReader;-><init>([B)V

    invoke-static {v5}, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser;->parseExifSegment(Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$RandomAccessReader;)I

    move-result v5

    move v0, v5

    goto :goto_0

    .line 126
    .end local v3    # "hasJpegExifPreamble":Z
    :cond_2
    const/4 v5, 0x0

    goto :goto_1

    .line 130
    .restart local v3    # "hasJpegExifPreamble":Z
    .restart local v4    # "i":I
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 141
    .end local v4    # "i":I
    :cond_4
    const/4 v5, -0x1

    move v0, v5

    goto :goto_0
.end method

.method public getType()Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$ImageType;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 87
    move-object v1, p0

    .local v1, "this":Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser;
    move-object v5, v1

    iget-object v5, v5, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser;->streamReader:Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$StreamReader;

    invoke-virtual {v5}, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$StreamReader;->getUInt16()I

    move-result v5

    move v2, v5

    .line 90
    .local v2, "firstTwoBytes":I
    move v5, v2

    const v6, 0xffd8

    if-ne v5, v6, :cond_0

    .line 91
    sget-object v5, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$ImageType;->JPEG:Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$ImageType;

    move-object v1, v5

    .line 109
    .end local v1    # "this":Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser;
    :goto_0
    return-object v1

    .line 94
    .restart local v1    # "this":Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser;
    :cond_0
    move v5, v2

    const/16 v6, 0x10

    shl-int/lit8 v5, v5, 0x10

    const/high16 v6, -0x10000

    and-int/2addr v5, v6

    move-object v6, v1

    iget-object v6, v6, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser;->streamReader:Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$StreamReader;

    invoke-virtual {v6}, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$StreamReader;->getUInt16()I

    move-result v6

    const v7, 0xffff

    and-int/2addr v6, v7

    or-int/2addr v5, v6

    move v3, v5

    .line 96
    .local v3, "firstFourBytes":I
    move v5, v3

    const v6, -0x76afb1b9

    if-ne v5, v6, :cond_2

    .line 98
    move-object v5, v1

    iget-object v5, v5, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser;->streamReader:Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$StreamReader;

    const-wide/16 v6, 0x15

    invoke-virtual {v5, v6, v7}, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$StreamReader;->skip(J)J

    move-result-wide v5

    .line 99
    move-object v5, v1

    iget-object v5, v5, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser;->streamReader:Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$StreamReader;

    invoke-virtual {v5}, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$StreamReader;->getByte()I

    move-result v5

    move v4, v5

    .line 101
    .local v4, "alpha":I
    move v5, v4

    const/4 v6, 0x3

    if-lt v5, v6, :cond_1

    sget-object v5, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$ImageType;->PNG_A:Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$ImageType;

    :goto_1
    move-object v1, v5

    goto :goto_0

    :cond_1
    sget-object v5, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$ImageType;->PNG:Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$ImageType;

    goto :goto_1

    .line 105
    .end local v4    # "alpha":I
    :cond_2
    move v5, v3

    const/16 v6, 0x8

    shr-int/lit8 v5, v5, 0x8

    const v6, 0x474946

    if-ne v5, v6, :cond_3

    .line 106
    sget-object v5, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$ImageType;->GIF:Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$ImageType;

    move-object v1, v5

    goto :goto_0

    .line 109
    :cond_3
    sget-object v5, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$ImageType;->UNKNOWN:Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$ImageType;

    move-object v1, v5

    goto :goto_0
.end method

.method public hasAlpha()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 83
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser;
    move-object v1, v0

    invoke-virtual {v1}, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser;->getType()Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$ImageType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$ImageType;->hasAlpha()Z

    move-result v1

    move v0, v1

    .end local v0    # "this":Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser;
    return v0
.end method

.class Lcom/bumptech/glide/gifencoder/LZWEncoder;
.super Ljava/lang/Object;
.source "LZWEncoder.java"


# static fields
.field static final BITS:I = 0xc

.field private static final EOF:I = -0x1

.field static final HSIZE:I = 0x138b


# instance fields
.field ClearCode:I

.field EOFCode:I

.field a_count:I

.field accum:[B

.field clear_flg:Z

.field codetab:[I

.field private curPixel:I

.field cur_accum:I

.field cur_bits:I

.field free_ent:I

.field g_init_bits:I

.field hsize:I

.field htab:[I

.field private imgH:I

.field private imgW:I

.field private initCodeSize:I

.field masks:[I

.field maxbits:I

.field maxcode:I

.field maxmaxcode:I

.field n_bits:I

.field private pixAry:[B

.field private remaining:I


# direct methods
.method constructor <init>(II[BI)V
    .locals 8

    .prologue
    .line 113
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/gifencoder/LZWEncoder;
    move v1, p1

    .local v1, "width":I
    move v2, p2

    .local v2, "height":I
    move-object v3, p3

    .local v3, "pixels":[B
    move v4, p4

    .local v4, "color_depth":I
    move-object v5, v0

    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    .line 48
    move-object v5, v0

    const/16 v6, 0xc

    iput v6, v5, Lcom/bumptech/glide/gifencoder/LZWEncoder;->maxbits:I

    .line 52
    move-object v5, v0

    const/16 v6, 0x1000

    iput v6, v5, Lcom/bumptech/glide/gifencoder/LZWEncoder;->maxmaxcode:I

    .line 54
    move-object v5, v0

    const/16 v6, 0x138b

    new-array v6, v6, [I

    iput-object v6, v5, Lcom/bumptech/glide/gifencoder/LZWEncoder;->htab:[I

    .line 56
    move-object v5, v0

    const/16 v6, 0x138b

    new-array v6, v6, [I

    iput-object v6, v5, Lcom/bumptech/glide/gifencoder/LZWEncoder;->codetab:[I

    .line 58
    move-object v5, v0

    const/16 v6, 0x138b

    iput v6, v5, Lcom/bumptech/glide/gifencoder/LZWEncoder;->hsize:I

    .line 60
    move-object v5, v0

    const/4 v6, 0x0

    iput v6, v5, Lcom/bumptech/glide/gifencoder/LZWEncoder;->free_ent:I

    .line 64
    move-object v5, v0

    const/4 v6, 0x0

    iput-boolean v6, v5, Lcom/bumptech/glide/gifencoder/LZWEncoder;->clear_flg:Z

    .line 99
    move-object v5, v0

    const/4 v6, 0x0

    iput v6, v5, Lcom/bumptech/glide/gifencoder/LZWEncoder;->cur_accum:I

    .line 101
    move-object v5, v0

    const/4 v6, 0x0

    iput v6, v5, Lcom/bumptech/glide/gifencoder/LZWEncoder;->cur_bits:I

    .line 103
    move-object v5, v0

    const/16 v6, 0x11

    new-array v6, v6, [I

    fill-array-data v6, :array_0

    iput-object v6, v5, Lcom/bumptech/glide/gifencoder/LZWEncoder;->masks:[I

    .line 110
    move-object v5, v0

    const/16 v6, 0x100

    new-array v6, v6, [B

    iput-object v6, v5, Lcom/bumptech/glide/gifencoder/LZWEncoder;->accum:[B

    .line 114
    move-object v5, v0

    move v6, v1

    iput v6, v5, Lcom/bumptech/glide/gifencoder/LZWEncoder;->imgW:I

    .line 115
    move-object v5, v0

    move v6, v2

    iput v6, v5, Lcom/bumptech/glide/gifencoder/LZWEncoder;->imgH:I

    .line 116
    move-object v5, v0

    move-object v6, v3

    iput-object v6, v5, Lcom/bumptech/glide/gifencoder/LZWEncoder;->pixAry:[B

    .line 117
    move-object v5, v0

    const/4 v6, 0x2

    move v7, v4

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v6

    iput v6, v5, Lcom/bumptech/glide/gifencoder/LZWEncoder;->initCodeSize:I

    .line 118
    return-void

    .line 103
    nop

    :array_0
    .array-data 4
        0x0
        0x1
        0x3
        0x7
        0xf
        0x1f
        0x3f
        0x7f
        0xff
        0x1ff
        0x3ff
        0x7ff
        0xfff
        0x1fff
        0x3fff
        0x7fff
        0xffff
    .end array-data
.end method

.method private nextPixel()I
    .locals 9

    .prologue
    .line 245
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/gifencoder/LZWEncoder;
    move-object v2, v0

    iget v2, v2, Lcom/bumptech/glide/gifencoder/LZWEncoder;->remaining:I

    if-nez v2, :cond_0

    .line 246
    const/4 v2, -0x1

    move v0, v2

    .line 252
    .end local v0    # "this":Lcom/bumptech/glide/gifencoder/LZWEncoder;
    .local v1, "pix":B
    :goto_0
    return v0

    .line 248
    .end local v1    # "pix":B
    .restart local v0    # "this":Lcom/bumptech/glide/gifencoder/LZWEncoder;
    :cond_0
    move-object v2, v0

    move-object v7, v2

    move-object v2, v7

    move-object v3, v7

    iget v3, v3, Lcom/bumptech/glide/gifencoder/LZWEncoder;->remaining:I

    const/4 v4, 0x1

    add-int/lit8 v3, v3, -0x1

    iput v3, v2, Lcom/bumptech/glide/gifencoder/LZWEncoder;->remaining:I

    .line 250
    move-object v2, v0

    iget-object v2, v2, Lcom/bumptech/glide/gifencoder/LZWEncoder;->pixAry:[B

    move-object v3, v0

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    iget v4, v4, Lcom/bumptech/glide/gifencoder/LZWEncoder;->curPixel:I

    move-object v7, v3

    move v8, v4

    move v3, v8

    move-object v4, v7

    move v5, v8

    const/4 v6, 0x1

    add-int/lit8 v5, v5, 0x1

    iput v5, v4, Lcom/bumptech/glide/gifencoder/LZWEncoder;->curPixel:I

    aget-byte v2, v2, v3

    move v1, v2

    .line 252
    .restart local v1    # "pix":B
    move v2, v1

    const/16 v3, 0xff

    and-int/lit16 v2, v2, 0xff

    move v0, v2

    goto :goto_0
.end method


# virtual methods
.method final MAXCODE(I)I
    .locals 4

    .prologue
    .line 238
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/gifencoder/LZWEncoder;
    move v1, p1

    .local v1, "n_bits":I
    const/4 v2, 0x1

    move v3, v1

    shl-int/2addr v2, v3

    const/4 v3, 0x1

    add-int/lit8 v2, v2, -0x1

    move v0, v2

    .end local v0    # "this":Lcom/bumptech/glide/gifencoder/LZWEncoder;
    return v0
.end method

.method char_out(BLjava/io/OutputStream;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 123
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/gifencoder/LZWEncoder;
    move v1, p1

    .local v1, "c":B
    move-object v2, p2

    .local v2, "outs":Ljava/io/OutputStream;
    move-object v3, v0

    iget-object v3, v3, Lcom/bumptech/glide/gifencoder/LZWEncoder;->accum:[B

    move-object v4, v0

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    iget v5, v5, Lcom/bumptech/glide/gifencoder/LZWEncoder;->a_count:I

    move-object v8, v4

    move v9, v5

    move v4, v9

    move-object v5, v8

    move v6, v9

    const/4 v7, 0x1

    add-int/lit8 v6, v6, 0x1

    iput v6, v5, Lcom/bumptech/glide/gifencoder/LZWEncoder;->a_count:I

    move v5, v1

    aput-byte v5, v3, v4

    .line 124
    move-object v3, v0

    iget v3, v3, Lcom/bumptech/glide/gifencoder/LZWEncoder;->a_count:I

    const/16 v4, 0xfe

    if-lt v3, v4, :cond_0

    .line 125
    move-object v3, v0

    move-object v4, v2

    invoke-virtual {v3, v4}, Lcom/bumptech/glide/gifencoder/LZWEncoder;->flush_char(Ljava/io/OutputStream;)V

    .line 126
    :cond_0
    return-void
.end method

.method cl_block(Ljava/io/OutputStream;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 132
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/gifencoder/LZWEncoder;
    move-object v1, p1

    .local v1, "outs":Ljava/io/OutputStream;
    move-object v2, v0

    move-object v3, v0

    iget v3, v3, Lcom/bumptech/glide/gifencoder/LZWEncoder;->hsize:I

    invoke-virtual {v2, v3}, Lcom/bumptech/glide/gifencoder/LZWEncoder;->cl_hash(I)V

    .line 133
    move-object v2, v0

    move-object v3, v0

    iget v3, v3, Lcom/bumptech/glide/gifencoder/LZWEncoder;->ClearCode:I

    const/4 v4, 0x2

    add-int/lit8 v3, v3, 0x2

    iput v3, v2, Lcom/bumptech/glide/gifencoder/LZWEncoder;->free_ent:I

    .line 134
    move-object v2, v0

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/bumptech/glide/gifencoder/LZWEncoder;->clear_flg:Z

    .line 136
    move-object v2, v0

    move-object v3, v0

    iget v3, v3, Lcom/bumptech/glide/gifencoder/LZWEncoder;->ClearCode:I

    move-object v4, v1

    invoke-virtual {v2, v3, v4}, Lcom/bumptech/glide/gifencoder/LZWEncoder;->output(ILjava/io/OutputStream;)V

    .line 137
    return-void
.end method

.method cl_hash(I)V
    .locals 6

    .prologue
    .line 141
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/gifencoder/LZWEncoder;
    move v1, p1

    .local v1, "hsize":I
    const/4 v3, 0x0

    move v2, v3

    .local v2, "i":I
    :goto_0
    move v3, v2

    move v4, v1

    if-ge v3, v4, :cond_0

    .line 142
    move-object v3, v0

    iget-object v3, v3, Lcom/bumptech/glide/gifencoder/LZWEncoder;->htab:[I

    move v4, v2

    const/4 v5, -0x1

    aput v5, v3, v4

    .line 141
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 143
    :cond_0
    return-void
.end method

.method compress(ILjava/io/OutputStream;)V
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 155
    move-object/from16 v0, p0

    .local v0, "this":Lcom/bumptech/glide/gifencoder/LZWEncoder;
    move/from16 v1, p1

    .local v1, "init_bits":I
    move-object/from16 v2, p2

    .local v2, "outs":Ljava/io/OutputStream;
    move-object v10, v0

    move v11, v1

    iput v11, v10, Lcom/bumptech/glide/gifencoder/LZWEncoder;->g_init_bits:I

    .line 158
    move-object v10, v0

    const/4 v11, 0x0

    iput-boolean v11, v10, Lcom/bumptech/glide/gifencoder/LZWEncoder;->clear_flg:Z

    .line 159
    move-object v10, v0

    move-object v11, v0

    iget v11, v11, Lcom/bumptech/glide/gifencoder/LZWEncoder;->g_init_bits:I

    iput v11, v10, Lcom/bumptech/glide/gifencoder/LZWEncoder;->n_bits:I

    .line 160
    move-object v10, v0

    move-object v11, v0

    move-object v12, v0

    iget v12, v12, Lcom/bumptech/glide/gifencoder/LZWEncoder;->n_bits:I

    invoke-virtual {v11, v12}, Lcom/bumptech/glide/gifencoder/LZWEncoder;->MAXCODE(I)I

    move-result v11

    iput v11, v10, Lcom/bumptech/glide/gifencoder/LZWEncoder;->maxcode:I

    .line 162
    move-object v10, v0

    const/4 v11, 0x1

    move v12, v1

    const/4 v13, 0x1

    add-int/lit8 v12, v12, -0x1

    shl-int/2addr v11, v12

    iput v11, v10, Lcom/bumptech/glide/gifencoder/LZWEncoder;->ClearCode:I

    .line 163
    move-object v10, v0

    move-object v11, v0

    iget v11, v11, Lcom/bumptech/glide/gifencoder/LZWEncoder;->ClearCode:I

    const/4 v12, 0x1

    add-int/lit8 v11, v11, 0x1

    iput v11, v10, Lcom/bumptech/glide/gifencoder/LZWEncoder;->EOFCode:I

    .line 164
    move-object v10, v0

    move-object v11, v0

    iget v11, v11, Lcom/bumptech/glide/gifencoder/LZWEncoder;->ClearCode:I

    const/4 v12, 0x2

    add-int/lit8 v11, v11, 0x2

    iput v11, v10, Lcom/bumptech/glide/gifencoder/LZWEncoder;->free_ent:I

    .line 166
    move-object v10, v0

    const/4 v11, 0x0

    iput v11, v10, Lcom/bumptech/glide/gifencoder/LZWEncoder;->a_count:I

    .line 168
    move-object v10, v0

    invoke-direct {v10}, Lcom/bumptech/glide/gifencoder/LZWEncoder;->nextPixel()I

    move-result v10

    move v6, v10

    .line 170
    .local v6, "ent":I
    const/4 v10, 0x0

    move v9, v10

    .line 171
    .local v9, "hshift":I
    move-object v10, v0

    iget v10, v10, Lcom/bumptech/glide/gifencoder/LZWEncoder;->hsize:I

    move v3, v10

    .local v3, "fcode":I
    :goto_0
    move v10, v3

    const/high16 v11, 0x10000

    if-ge v10, v11, :cond_0

    .line 172
    add-int/lit8 v9, v9, 0x1

    .line 171
    move v10, v3

    const/4 v11, 0x2

    mul-int/lit8 v10, v10, 0x2

    move v3, v10

    goto :goto_0

    .line 173
    :cond_0
    const/16 v10, 0x8

    move v11, v9

    rsub-int/lit8 v10, v11, 0x8

    move v9, v10

    .line 175
    move-object v10, v0

    iget v10, v10, Lcom/bumptech/glide/gifencoder/LZWEncoder;->hsize:I

    move v8, v10

    .line 176
    .local v8, "hsize_reg":I
    move-object v10, v0

    move v11, v8

    invoke-virtual {v10, v11}, Lcom/bumptech/glide/gifencoder/LZWEncoder;->cl_hash(I)V

    .line 178
    move-object v10, v0

    move-object v11, v0

    iget v11, v11, Lcom/bumptech/glide/gifencoder/LZWEncoder;->ClearCode:I

    move-object v12, v2

    invoke-virtual {v10, v11, v12}, Lcom/bumptech/glide/gifencoder/LZWEncoder;->output(ILjava/io/OutputStream;)V

    .line 181
    :goto_1
    move-object v10, v0

    invoke-direct {v10}, Lcom/bumptech/glide/gifencoder/LZWEncoder;->nextPixel()I

    move-result v10

    move/from16 v16, v10

    move/from16 v10, v16

    move/from16 v11, v16

    move v5, v11

    .local v5, "c":I
    const/4 v11, -0x1

    if-eq v10, v11, :cond_7

    .line 182
    move v10, v5

    move-object v11, v0

    iget v11, v11, Lcom/bumptech/glide/gifencoder/LZWEncoder;->maxbits:I

    shl-int/2addr v10, v11

    move v11, v6

    add-int/2addr v10, v11

    move v3, v10

    .line 183
    move v10, v5

    move v11, v9

    shl-int/2addr v10, v11

    move v11, v6

    xor-int/2addr v10, v11

    move v4, v10

    .line 185
    .local v4, "i":I
    move-object v10, v0

    iget-object v10, v10, Lcom/bumptech/glide/gifencoder/LZWEncoder;->htab:[I

    move v11, v4

    aget v10, v10, v11

    move v11, v3

    if-ne v10, v11, :cond_1

    .line 186
    move-object v10, v0

    iget-object v10, v10, Lcom/bumptech/glide/gifencoder/LZWEncoder;->codetab:[I

    move v11, v4

    aget v10, v10, v11

    move v6, v10

    .line 187
    goto :goto_1

    .line 188
    :cond_1
    move-object v10, v0

    iget-object v10, v10, Lcom/bumptech/glide/gifencoder/LZWEncoder;->htab:[I

    move v11, v4

    aget v10, v10, v11

    if-ltz v10, :cond_5

    .line 190
    move v10, v8

    move v11, v4

    sub-int/2addr v10, v11

    move v7, v10

    .line 191
    .local v7, "disp":I
    move v10, v4

    if-nez v10, :cond_2

    .line 192
    const/4 v10, 0x1

    move v7, v10

    .line 194
    :cond_2
    move v10, v4

    move v11, v7

    sub-int/2addr v10, v11

    move/from16 v16, v10

    move/from16 v10, v16

    move/from16 v11, v16

    move v4, v11

    if-gez v10, :cond_3

    .line 195
    move v10, v4

    move v11, v8

    add-int/2addr v10, v11

    move v4, v10

    .line 197
    :cond_3
    move-object v10, v0

    iget-object v10, v10, Lcom/bumptech/glide/gifencoder/LZWEncoder;->htab:[I

    move v11, v4

    aget v10, v10, v11

    move v11, v3

    if-ne v10, v11, :cond_4

    .line 198
    move-object v10, v0

    iget-object v10, v10, Lcom/bumptech/glide/gifencoder/LZWEncoder;->codetab:[I

    move v11, v4

    aget v10, v10, v11

    move v6, v10

    .line 199
    goto :goto_1

    .line 201
    :cond_4
    move-object v10, v0

    iget-object v10, v10, Lcom/bumptech/glide/gifencoder/LZWEncoder;->htab:[I

    move v11, v4

    aget v10, v10, v11

    if-gez v10, :cond_2

    .line 203
    .end local v7    # "disp":I
    :cond_5
    move-object v10, v0

    move v11, v6

    move-object v12, v2

    invoke-virtual {v10, v11, v12}, Lcom/bumptech/glide/gifencoder/LZWEncoder;->output(ILjava/io/OutputStream;)V

    .line 204
    move v10, v5

    move v6, v10

    .line 205
    move-object v10, v0

    iget v10, v10, Lcom/bumptech/glide/gifencoder/LZWEncoder;->free_ent:I

    move-object v11, v0

    iget v11, v11, Lcom/bumptech/glide/gifencoder/LZWEncoder;->maxmaxcode:I

    if-ge v10, v11, :cond_6

    .line 206
    move-object v10, v0

    iget-object v10, v10, Lcom/bumptech/glide/gifencoder/LZWEncoder;->codetab:[I

    move v11, v4

    move-object v12, v0

    move-object/from16 v16, v12

    move-object/from16 v12, v16

    move-object/from16 v13, v16

    iget v13, v13, Lcom/bumptech/glide/gifencoder/LZWEncoder;->free_ent:I

    move-object/from16 v16, v12

    move/from16 v17, v13

    move/from16 v12, v17

    move-object/from16 v13, v16

    move/from16 v14, v17

    const/4 v15, 0x1

    add-int/lit8 v14, v14, 0x1

    iput v14, v13, Lcom/bumptech/glide/gifencoder/LZWEncoder;->free_ent:I

    aput v12, v10, v11

    .line 207
    move-object v10, v0

    iget-object v10, v10, Lcom/bumptech/glide/gifencoder/LZWEncoder;->htab:[I

    move v11, v4

    move v12, v3

    aput v12, v10, v11

    goto/16 :goto_1

    .line 209
    :cond_6
    move-object v10, v0

    move-object v11, v2

    invoke-virtual {v10, v11}, Lcom/bumptech/glide/gifencoder/LZWEncoder;->cl_block(Ljava/io/OutputStream;)V

    goto/16 :goto_1

    .line 212
    .end local v4    # "i":I
    :cond_7
    move-object v10, v0

    move v11, v6

    move-object v12, v2

    invoke-virtual {v10, v11, v12}, Lcom/bumptech/glide/gifencoder/LZWEncoder;->output(ILjava/io/OutputStream;)V

    .line 213
    move-object v10, v0

    move-object v11, v0

    iget v11, v11, Lcom/bumptech/glide/gifencoder/LZWEncoder;->EOFCode:I

    move-object v12, v2

    invoke-virtual {v10, v11, v12}, Lcom/bumptech/glide/gifencoder/LZWEncoder;->output(ILjava/io/OutputStream;)V

    .line 214
    return-void
.end method

.method encode(Ljava/io/OutputStream;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 218
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/gifencoder/LZWEncoder;
    move-object v1, p1

    .local v1, "os":Ljava/io/OutputStream;
    move-object v2, v1

    move-object v3, v0

    iget v3, v3, Lcom/bumptech/glide/gifencoder/LZWEncoder;->initCodeSize:I

    invoke-virtual {v2, v3}, Ljava/io/OutputStream;->write(I)V

    .line 220
    move-object v2, v0

    move-object v3, v0

    iget v3, v3, Lcom/bumptech/glide/gifencoder/LZWEncoder;->imgW:I

    move-object v4, v0

    iget v4, v4, Lcom/bumptech/glide/gifencoder/LZWEncoder;->imgH:I

    mul-int/2addr v3, v4

    iput v3, v2, Lcom/bumptech/glide/gifencoder/LZWEncoder;->remaining:I

    .line 221
    move-object v2, v0

    const/4 v3, 0x0

    iput v3, v2, Lcom/bumptech/glide/gifencoder/LZWEncoder;->curPixel:I

    .line 223
    move-object v2, v0

    move-object v3, v0

    iget v3, v3, Lcom/bumptech/glide/gifencoder/LZWEncoder;->initCodeSize:I

    const/4 v4, 0x1

    add-int/lit8 v3, v3, 0x1

    move-object v4, v1

    invoke-virtual {v2, v3, v4}, Lcom/bumptech/glide/gifencoder/LZWEncoder;->compress(ILjava/io/OutputStream;)V

    .line 225
    move-object v2, v1

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/io/OutputStream;->write(I)V

    .line 226
    return-void
.end method

.method flush_char(Ljava/io/OutputStream;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 230
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/gifencoder/LZWEncoder;
    move-object v1, p1

    .local v1, "outs":Ljava/io/OutputStream;
    move-object v2, v0

    iget v2, v2, Lcom/bumptech/glide/gifencoder/LZWEncoder;->a_count:I

    if-lez v2, :cond_0

    .line 231
    move-object v2, v1

    move-object v3, v0

    iget v3, v3, Lcom/bumptech/glide/gifencoder/LZWEncoder;->a_count:I

    invoke-virtual {v2, v3}, Ljava/io/OutputStream;->write(I)V

    .line 232
    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Lcom/bumptech/glide/gifencoder/LZWEncoder;->accum:[B

    const/4 v4, 0x0

    move-object v5, v0

    iget v5, v5, Lcom/bumptech/glide/gifencoder/LZWEncoder;->a_count:I

    invoke-virtual {v2, v3, v4, v5}, Ljava/io/OutputStream;->write([BII)V

    .line 233
    move-object v2, v0

    const/4 v3, 0x0

    iput v3, v2, Lcom/bumptech/glide/gifencoder/LZWEncoder;->a_count:I

    .line 235
    :cond_0
    return-void
.end method

.method output(ILjava/io/OutputStream;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 256
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/gifencoder/LZWEncoder;
    move v1, p1

    .local v1, "code":I
    move-object v2, p2

    .local v2, "outs":Ljava/io/OutputStream;
    move-object v3, v0

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    iget v4, v4, Lcom/bumptech/glide/gifencoder/LZWEncoder;->cur_accum:I

    move-object v5, v0

    iget-object v5, v5, Lcom/bumptech/glide/gifencoder/LZWEncoder;->masks:[I

    move-object v6, v0

    iget v6, v6, Lcom/bumptech/glide/gifencoder/LZWEncoder;->cur_bits:I

    aget v5, v5, v6

    and-int/2addr v4, v5

    iput v4, v3, Lcom/bumptech/glide/gifencoder/LZWEncoder;->cur_accum:I

    .line 258
    move-object v3, v0

    iget v3, v3, Lcom/bumptech/glide/gifencoder/LZWEncoder;->cur_bits:I

    if-lez v3, :cond_0

    .line 259
    move-object v3, v0

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    iget v4, v4, Lcom/bumptech/glide/gifencoder/LZWEncoder;->cur_accum:I

    move v5, v1

    move-object v6, v0

    iget v6, v6, Lcom/bumptech/glide/gifencoder/LZWEncoder;->cur_bits:I

    shl-int/2addr v5, v6

    or-int/2addr v4, v5

    iput v4, v3, Lcom/bumptech/glide/gifencoder/LZWEncoder;->cur_accum:I

    .line 263
    :goto_0
    move-object v3, v0

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    iget v4, v4, Lcom/bumptech/glide/gifencoder/LZWEncoder;->cur_bits:I

    move-object v5, v0

    iget v5, v5, Lcom/bumptech/glide/gifencoder/LZWEncoder;->n_bits:I

    add-int/2addr v4, v5

    iput v4, v3, Lcom/bumptech/glide/gifencoder/LZWEncoder;->cur_bits:I

    .line 265
    :goto_1
    move-object v3, v0

    iget v3, v3, Lcom/bumptech/glide/gifencoder/LZWEncoder;->cur_bits:I

    const/16 v4, 0x8

    if-lt v3, v4, :cond_1

    .line 266
    move-object v3, v0

    move-object v4, v0

    iget v4, v4, Lcom/bumptech/glide/gifencoder/LZWEncoder;->cur_accum:I

    const/16 v5, 0xff

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    move-object v5, v2

    invoke-virtual {v3, v4, v5}, Lcom/bumptech/glide/gifencoder/LZWEncoder;->char_out(BLjava/io/OutputStream;)V

    .line 267
    move-object v3, v0

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    iget v4, v4, Lcom/bumptech/glide/gifencoder/LZWEncoder;->cur_accum:I

    const/16 v5, 0x8

    shr-int/lit8 v4, v4, 0x8

    iput v4, v3, Lcom/bumptech/glide/gifencoder/LZWEncoder;->cur_accum:I

    .line 268
    move-object v3, v0

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    iget v4, v4, Lcom/bumptech/glide/gifencoder/LZWEncoder;->cur_bits:I

    const/16 v5, 0x8

    add-int/lit8 v4, v4, -0x8

    iput v4, v3, Lcom/bumptech/glide/gifencoder/LZWEncoder;->cur_bits:I

    goto :goto_1

    .line 261
    :cond_0
    move-object v3, v0

    move v4, v1

    iput v4, v3, Lcom/bumptech/glide/gifencoder/LZWEncoder;->cur_accum:I

    goto :goto_0

    .line 273
    :cond_1
    move-object v3, v0

    iget v3, v3, Lcom/bumptech/glide/gifencoder/LZWEncoder;->free_ent:I

    move-object v4, v0

    iget v4, v4, Lcom/bumptech/glide/gifencoder/LZWEncoder;->maxcode:I

    if-gt v3, v4, :cond_2

    move-object v3, v0

    iget-boolean v3, v3, Lcom/bumptech/glide/gifencoder/LZWEncoder;->clear_flg:Z

    if-eqz v3, :cond_3

    .line 274
    :cond_2
    move-object v3, v0

    iget-boolean v3, v3, Lcom/bumptech/glide/gifencoder/LZWEncoder;->clear_flg:Z

    if-eqz v3, :cond_4

    .line 275
    move-object v3, v0

    move-object v4, v0

    move-object v5, v0

    move-object v6, v0

    iget v6, v6, Lcom/bumptech/glide/gifencoder/LZWEncoder;->g_init_bits:I

    move-object v8, v5

    move v9, v6

    move v5, v9

    move-object v6, v8

    move v7, v9

    iput v7, v6, Lcom/bumptech/glide/gifencoder/LZWEncoder;->n_bits:I

    invoke-virtual {v4, v5}, Lcom/bumptech/glide/gifencoder/LZWEncoder;->MAXCODE(I)I

    move-result v4

    iput v4, v3, Lcom/bumptech/glide/gifencoder/LZWEncoder;->maxcode:I

    .line 276
    move-object v3, v0

    const/4 v4, 0x0

    iput-boolean v4, v3, Lcom/bumptech/glide/gifencoder/LZWEncoder;->clear_flg:Z

    .line 286
    :cond_3
    :goto_2
    move v3, v1

    move-object v4, v0

    iget v4, v4, Lcom/bumptech/glide/gifencoder/LZWEncoder;->EOFCode:I

    if-ne v3, v4, :cond_7

    .line 288
    :goto_3
    move-object v3, v0

    iget v3, v3, Lcom/bumptech/glide/gifencoder/LZWEncoder;->cur_bits:I

    if-lez v3, :cond_6

    .line 289
    move-object v3, v0

    move-object v4, v0

    iget v4, v4, Lcom/bumptech/glide/gifencoder/LZWEncoder;->cur_accum:I

    const/16 v5, 0xff

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    move-object v5, v2

    invoke-virtual {v3, v4, v5}, Lcom/bumptech/glide/gifencoder/LZWEncoder;->char_out(BLjava/io/OutputStream;)V

    .line 290
    move-object v3, v0

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    iget v4, v4, Lcom/bumptech/glide/gifencoder/LZWEncoder;->cur_accum:I

    const/16 v5, 0x8

    shr-int/lit8 v4, v4, 0x8

    iput v4, v3, Lcom/bumptech/glide/gifencoder/LZWEncoder;->cur_accum:I

    .line 291
    move-object v3, v0

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    iget v4, v4, Lcom/bumptech/glide/gifencoder/LZWEncoder;->cur_bits:I

    const/16 v5, 0x8

    add-int/lit8 v4, v4, -0x8

    iput v4, v3, Lcom/bumptech/glide/gifencoder/LZWEncoder;->cur_bits:I

    goto :goto_3

    .line 278
    :cond_4
    move-object v3, v0

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    iget v4, v4, Lcom/bumptech/glide/gifencoder/LZWEncoder;->n_bits:I

    const/4 v5, 0x1

    add-int/lit8 v4, v4, 0x1

    iput v4, v3, Lcom/bumptech/glide/gifencoder/LZWEncoder;->n_bits:I

    .line 279
    move-object v3, v0

    iget v3, v3, Lcom/bumptech/glide/gifencoder/LZWEncoder;->n_bits:I

    move-object v4, v0

    iget v4, v4, Lcom/bumptech/glide/gifencoder/LZWEncoder;->maxbits:I

    if-ne v3, v4, :cond_5

    .line 280
    move-object v3, v0

    move-object v4, v0

    iget v4, v4, Lcom/bumptech/glide/gifencoder/LZWEncoder;->maxmaxcode:I

    iput v4, v3, Lcom/bumptech/glide/gifencoder/LZWEncoder;->maxcode:I

    goto :goto_2

    .line 282
    :cond_5
    move-object v3, v0

    move-object v4, v0

    move-object v5, v0

    iget v5, v5, Lcom/bumptech/glide/gifencoder/LZWEncoder;->n_bits:I

    invoke-virtual {v4, v5}, Lcom/bumptech/glide/gifencoder/LZWEncoder;->MAXCODE(I)I

    move-result v4

    iput v4, v3, Lcom/bumptech/glide/gifencoder/LZWEncoder;->maxcode:I

    goto :goto_2

    .line 294
    :cond_6
    move-object v3, v0

    move-object v4, v2

    invoke-virtual {v3, v4}, Lcom/bumptech/glide/gifencoder/LZWEncoder;->flush_char(Ljava/io/OutputStream;)V

    .line 296
    :cond_7
    return-void
.end method

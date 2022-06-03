.class public Lgnu/xml/XMLParser;
.super Ljava/lang/Object;
.source "XMLParser.java"


# static fields
.field private static final ATTRIBUTE_SEEN_EQ_STATE:I = 0xb

.field private static final ATTRIBUTE_SEEN_NAME_STATE:I = 0x8

.field static final BAD_ENCODING_SYNTAX:Ljava/lang/String; = "bad \'encoding\' declaration"

.field static final BAD_STANDALONE_SYNTAX:Ljava/lang/String; = "bad \'standalone\' declaration"

.field private static final BEGIN_ELEMENT_STATE:I = 0x2

.field private static final DOCTYPE_NAME_SEEN_STATE:I = 0x10

.field private static final DOCTYPE_SEEN_STATE:I = 0xd

.field private static final END_ELEMENT_STATE:I = 0x4

.field private static final EXPECT_NAME_MODIFIER:I = 0x1

.field private static final EXPECT_RIGHT_STATE:I = 0x1b

.field private static final INIT_LEFT_QUEST_STATE:I = 0x1e

.field private static final INIT_LEFT_STATE:I = 0x22

.field private static final INIT_STATE:I = 0x0

.field private static final INIT_TEXT_STATE:I = 0x1f

.field private static final INVALID_VERSION_DECL:I = 0x23

.field private static final MAYBE_ATTRIBUTE_STATE:I = 0xa

.field private static final PREV_WAS_CR_STATE:I = 0x1c

.field private static final SAW_AMP_SHARP_STATE:I = 0x1a

.field private static final SAW_AMP_STATE:I = 0x19

.field private static final SAW_ENTITY_REF:I = 0x6

.field private static final SAW_EOF_ERROR:I = 0x25

.field private static final SAW_ERROR:I = 0x24

.field private static final SAW_LEFT_EXCL_MINUS_STATE:I = 0x16

.field private static final SAW_LEFT_EXCL_STATE:I = 0x14

.field private static final SAW_LEFT_QUEST_STATE:I = 0x15

.field private static final SAW_LEFT_SLASH_STATE:I = 0x13

.field private static final SAW_LEFT_STATE:I = 0xe

.field private static final SKIP_SPACES_MODIFIER:I = 0x2

.field private static final TEXT_STATE:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 22
    move-object v0, p0

    .local v0, "this":Lgnu/xml/XMLParser;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static XMLStreamReader(Ljava/io/InputStream;)Lgnu/text/LineInputStreamReader;
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 64
    move-object v0, p0

    .local v0, "strm":Ljava/io/InputStream;
    new-instance v10, Lgnu/text/LineInputStreamReader;

    move-object v14, v10

    move-object v10, v14

    move-object v11, v14

    move-object v12, v0

    invoke-direct {v11, v12}, Lgnu/text/LineInputStreamReader;-><init>(Ljava/io/InputStream;)V

    move-object v1, v10

    .line 68
    .local v1, "in":Lgnu/text/LineInputStreamReader;
    move-object v10, v1

    invoke-virtual {v10}, Lgnu/text/LineInputStreamReader;->getByte()I

    move-result v10

    move v2, v10

    .line 69
    .local v2, "b1":I
    move v10, v2

    if-gez v10, :cond_0

    const/4 v10, -0x1

    :goto_0
    move v3, v10

    .line 70
    .local v3, "b2":I
    move v10, v3

    if-gez v10, :cond_1

    const/4 v10, -0x1

    :goto_1
    move v4, v10

    .line 71
    .local v4, "b3":I
    move v10, v2

    const/16 v11, 0xef

    if-ne v10, v11, :cond_2

    move v10, v3

    const/16 v11, 0xbb

    if-ne v10, v11, :cond_2

    move v10, v4

    const/16 v11, 0xbf

    if-ne v10, v11, :cond_2

    .line 73
    move-object v10, v1

    const/4 v11, 0x3

    invoke-virtual {v10, v11}, Lgnu/text/LineInputStreamReader;->resetStart(I)V

    .line 74
    move-object v10, v1

    const-string/jumbo v11, "UTF-8"

    invoke-virtual {v10, v11}, Lgnu/text/LineInputStreamReader;->setCharset(Ljava/lang/String;)V

    .line 125
    :goto_2
    move-object v10, v1

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Lgnu/text/LineInputStreamReader;->setKeepFullLines(Z)V

    .line 126
    move-object v10, v1

    move-object v0, v10

    .end local v0    # "strm":Ljava/io/InputStream;
    return-object v0

    .line 69
    .end local v3    # "b2":I
    .end local v4    # "b3":I
    .restart local v0    # "strm":Ljava/io/InputStream;
    :cond_0
    move-object v10, v1

    invoke-virtual {v10}, Lgnu/text/LineInputStreamReader;->getByte()I

    move-result v10

    goto :goto_0

    .line 70
    .restart local v3    # "b2":I
    :cond_1
    move-object v10, v1

    invoke-virtual {v10}, Lgnu/text/LineInputStreamReader;->getByte()I

    move-result v10

    goto :goto_1

    .line 76
    .restart local v4    # "b3":I
    :cond_2
    move v10, v2

    const/16 v11, 0xff

    if-ne v10, v11, :cond_3

    move v10, v3

    const/16 v11, 0xfe

    if-ne v10, v11, :cond_3

    move v10, v4

    if-eqz v10, :cond_3

    .line 78
    move-object v10, v1

    const/4 v11, 0x2

    invoke-virtual {v10, v11}, Lgnu/text/LineInputStreamReader;->resetStart(I)V

    .line 79
    move-object v10, v1

    const-string/jumbo v11, "UTF-16LE"

    invoke-virtual {v10, v11}, Lgnu/text/LineInputStreamReader;->setCharset(Ljava/lang/String;)V

    goto :goto_2

    .line 81
    :cond_3
    move v10, v2

    const/16 v11, 0xfe

    if-ne v10, v11, :cond_4

    move v10, v3

    const/16 v11, 0xff

    if-ne v10, v11, :cond_4

    move v10, v4

    if-eqz v10, :cond_4

    .line 83
    move-object v10, v1

    const/4 v11, 0x2

    invoke-virtual {v10, v11}, Lgnu/text/LineInputStreamReader;->resetStart(I)V

    .line 84
    move-object v10, v1

    const-string/jumbo v11, "UTF-16BE"

    invoke-virtual {v10, v11}, Lgnu/text/LineInputStreamReader;->setCharset(Ljava/lang/String;)V

    goto :goto_2

    .line 88
    :cond_4
    move v10, v4

    if-gez v10, :cond_5

    const/4 v10, -0x1

    :goto_3
    move v5, v10

    .line 89
    .local v5, "b4":I
    move v10, v2

    const/16 v11, 0x4c

    if-ne v10, v11, :cond_6

    move v10, v3

    const/16 v11, 0x6f

    if-ne v10, v11, :cond_6

    move v10, v4

    const/16 v11, 0xa7

    if-ne v10, v11, :cond_6

    move v10, v5

    const/16 v11, 0x94

    if-ne v10, v11, :cond_6

    .line 90
    new-instance v10, Ljava/lang/RuntimeException;

    move-object v14, v10

    move-object v10, v14

    move-object v11, v14

    const-string/jumbo v12, "XMLParser: EBCDIC encodings not supported"

    invoke-direct {v11, v12}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 88
    .end local v5    # "b4":I
    :cond_5
    move-object v10, v1

    invoke-virtual {v10}, Lgnu/text/LineInputStreamReader;->getByte()I

    move-result v10

    goto :goto_3

    .line 91
    .restart local v5    # "b4":I
    :cond_6
    move-object v10, v1

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Lgnu/text/LineInputStreamReader;->resetStart(I)V

    .line 92
    move v10, v2

    const/16 v11, 0x3c

    if-ne v10, v11, :cond_8

    move v10, v3

    const/16 v11, 0x3f

    if-ne v10, v11, :cond_7

    move v10, v4

    const/16 v11, 0x78

    if-ne v10, v11, :cond_7

    move v10, v5

    const/16 v11, 0x6d

    if-eq v10, v11, :cond_9

    :cond_7
    move v10, v3

    if-nez v10, :cond_8

    move v10, v4

    const/16 v11, 0x3f

    if-ne v10, v11, :cond_8

    move v10, v5

    if-eqz v10, :cond_9

    :cond_8
    move v10, v2

    if-nez v10, :cond_11

    move v10, v3

    const/16 v11, 0x3c

    if-ne v10, v11, :cond_11

    move v10, v4

    if-nez v10, :cond_11

    move v10, v5

    const/16 v11, 0x3f

    if-ne v10, v11, :cond_11

    .line 96
    :cond_9
    move-object v10, v1

    iget-object v10, v10, Lgnu/text/LineInputStreamReader;->buffer:[C

    move-object v6, v10

    .line 97
    .local v6, "buffer":[C
    move-object v10, v6

    if-nez v10, :cond_a

    .line 98
    move-object v10, v1

    const/16 v11, 0x2000

    new-array v11, v11, [C

    move-object v14, v11

    move-object v11, v14

    move-object v12, v14

    move-object v6, v12

    iput-object v11, v10, Lgnu/text/LineInputStreamReader;->buffer:[C

    .line 99
    :cond_a
    const/4 v10, 0x0

    move v7, v10

    .line 100
    .local v7, "pos":I
    const/4 v10, 0x0

    move v8, v10

    .line 103
    .local v8, "quote":I
    :goto_4
    move-object v10, v1

    invoke-virtual {v10}, Lgnu/text/LineInputStreamReader;->getByte()I

    move-result v10

    move v9, v10

    .line 104
    .local v9, "b":I
    move v10, v9

    if-nez v10, :cond_b

    .line 105
    goto :goto_4

    .line 106
    :cond_b
    move v10, v9

    if-gez v10, :cond_c

    .line 107
    .line 119
    :goto_5
    move-object v10, v1

    const/4 v11, 0x0

    iput v11, v10, Lgnu/text/LineInputStreamReader;->pos:I

    .line 120
    move-object v10, v1

    move v11, v7

    iput v11, v10, Lgnu/text/LineInputStreamReader;->limit:I

    .line 121
    goto/16 :goto_2

    .line 108
    :cond_c
    move-object v10, v6

    move v11, v7

    add-int/lit8 v7, v7, 0x1

    move v12, v9

    const/16 v13, 0xff

    and-int/lit16 v12, v12, 0xff

    int-to-char v12, v12

    aput-char v12, v10, v11

    .line 109
    move v10, v8

    if-nez v10, :cond_10

    .line 111
    move v10, v9

    const/16 v11, 0x3e

    if-ne v10, v11, :cond_d

    .line 112
    goto :goto_5

    .line 113
    :cond_d
    move v10, v9

    const/16 v11, 0x27

    if-eq v10, v11, :cond_e

    move v10, v9

    const/16 v11, 0x22

    if-ne v10, v11, :cond_f

    .line 114
    :cond_e
    move v10, v9

    move v8, v10

    .line 118
    :cond_f
    :goto_6
    goto :goto_4

    .line 116
    :cond_10
    move v10, v9

    move v11, v8

    if-ne v10, v11, :cond_f

    .line 117
    const/4 v10, 0x0

    move v8, v10

    goto :goto_6

    .line 123
    .end local v6    # "buffer":[C
    .end local v7    # "pos":I
    .end local v8    # "quote":I
    .end local v9    # "b":I
    :cond_11
    move-object v10, v1

    const-string/jumbo v11, "UTF-8"

    invoke-virtual {v10, v11}, Lgnu/text/LineInputStreamReader;->setCharset(Ljava/lang/String;)V

    goto/16 :goto_2
.end method

.method public static parse(Lgnu/text/LineBufferedReader;Lgnu/text/SourceMessages;Lgnu/lists/Consumer;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 143
    move-object v0, p0

    .local v0, "in":Lgnu/text/LineBufferedReader;
    move-object v1, p1

    .local v1, "messages":Lgnu/text/SourceMessages;
    move-object v2, p2

    .local v2, "out":Lgnu/lists/Consumer;
    new-instance v5, Lgnu/xml/XMLFilter;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    move-object v7, v2

    invoke-direct {v6, v7}, Lgnu/xml/XMLFilter;-><init>(Lgnu/lists/Consumer;)V

    move-object v3, v5

    .line 144
    .local v3, "filter":Lgnu/xml/XMLFilter;
    move-object v5, v3

    move-object v6, v1

    invoke-virtual {v5, v6}, Lgnu/xml/XMLFilter;->setMessages(Lgnu/text/SourceMessages;)V

    .line 145
    move-object v5, v3

    move-object v6, v0

    invoke-virtual {v5, v6}, Lgnu/xml/XMLFilter;->setSourceLocator(Lgnu/text/LineBufferedReader;)V

    .line 146
    move-object v5, v3

    invoke-virtual {v5}, Lgnu/xml/XMLFilter;->startDocument()V

    .line 147
    move-object v5, v0

    invoke-virtual {v5}, Lgnu/text/LineBufferedReader;->getPath()Lgnu/text/Path;

    move-result-object v5

    move-object v4, v5

    .line 148
    .local v4, "uri":Lgnu/text/Path;
    move-object v5, v4

    if-eqz v5, :cond_0

    .line 149
    move-object v5, v3

    move-object v6, v4

    invoke-virtual {v5, v6}, Lgnu/xml/XMLFilter;->writeDocumentUri(Ljava/lang/Object;)V

    .line 150
    :cond_0
    move-object v5, v0

    move-object v6, v3

    invoke-static {v5, v6}, Lgnu/xml/XMLParser;->parse(Lgnu/text/LineBufferedReader;Lgnu/xml/XMLFilter;)V

    .line 151
    move-object v5, v3

    invoke-virtual {v5}, Lgnu/xml/XMLFilter;->endDocument()V

    .line 152
    return-void
.end method

.method public static parse(Lgnu/text/LineBufferedReader;Lgnu/text/SourceMessages;Lgnu/xml/XMLFilter;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 157
    move-object v0, p0

    .local v0, "in":Lgnu/text/LineBufferedReader;
    move-object v1, p1

    .local v1, "messages":Lgnu/text/SourceMessages;
    move-object v2, p2

    .local v2, "filter":Lgnu/xml/XMLFilter;
    move-object v4, v2

    move-object v5, v1

    invoke-virtual {v4, v5}, Lgnu/xml/XMLFilter;->setMessages(Lgnu/text/SourceMessages;)V

    .line 158
    move-object v4, v2

    move-object v5, v0

    invoke-virtual {v4, v5}, Lgnu/xml/XMLFilter;->setSourceLocator(Lgnu/text/LineBufferedReader;)V

    .line 159
    move-object v4, v2

    invoke-virtual {v4}, Lgnu/xml/XMLFilter;->startDocument()V

    .line 160
    move-object v4, v0

    invoke-virtual {v4}, Lgnu/text/LineBufferedReader;->getPath()Lgnu/text/Path;

    move-result-object v4

    move-object v3, v4

    .line 161
    .local v3, "uri":Lgnu/text/Path;
    move-object v4, v3

    if-eqz v4, :cond_0

    .line 162
    move-object v4, v2

    move-object v5, v3

    invoke-virtual {v4, v5}, Lgnu/xml/XMLFilter;->writeDocumentUri(Ljava/lang/Object;)V

    .line 163
    :cond_0
    move-object v4, v0

    move-object v5, v2

    invoke-static {v4, v5}, Lgnu/xml/XMLParser;->parse(Lgnu/text/LineBufferedReader;Lgnu/xml/XMLFilter;)V

    .line 164
    move-object v4, v2

    invoke-virtual {v4}, Lgnu/xml/XMLFilter;->endDocument()V

    .line 165
    move-object v4, v0

    invoke-virtual {v4}, Lgnu/text/LineBufferedReader;->close()V

    .line 166
    return-void
.end method

.method public static parse(Lgnu/text/LineBufferedReader;Lgnu/xml/XMLFilter;)V
    .locals 27

    .prologue
    .line 171
    move-object/from16 v2, p0

    .local v2, "in":Lgnu/text/LineBufferedReader;
    move-object/from16 v3, p1

    .local v3, "out":Lgnu/xml/XMLFilter;
    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget-object v0, v0, Lgnu/text/LineBufferedReader;->buffer:[C

    move-object/from16 v19, v0

    move-object/from16 v4, v19

    .line 172
    .local v4, "buffer":[C
    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget v0, v0, Lgnu/text/LineBufferedReader;->pos:I

    move/from16 v19, v0

    move/from16 v5, v19

    .line 173
    .local v5, "pos":I
    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget v0, v0, Lgnu/text/LineBufferedReader;->limit:I

    move/from16 v19, v0

    move/from16 v6, v19

    .line 189
    .local v6, "limit":I
    const/16 v19, 0x0

    move/from16 v7, v19

    .line 194
    .local v7, "state":I
    const/16 v19, 0x3c

    move/from16 v8, v19

    .line 195
    .local v8, "terminator":C
    const/16 v19, 0xe

    move/from16 v9, v19

    .line 196
    .local v9, "continue_state":I
    const/16 v19, 0x20

    move/from16 v10, v19

    .line 197
    .local v10, "ch":C
    const/16 v19, 0x0

    move/from16 v11, v19

    .line 198
    .local v11, "length":I
    const/16 v19, -0x1

    move/from16 v12, v19

    .line 199
    .local v12, "dstart":I
    const/16 v19, 0x0

    move-object/from16 v13, v19

    .line 201
    .local v13, "message":Ljava/lang/String;
    move/from16 v19, v6

    move/from16 v14, v19

    .line 206
    .local v14, "start":I
    :cond_0
    :goto_0
    move/from16 v19, v7

    packed-switch v19, :pswitch_data_0

    .line 948
    :cond_1
    :goto_1
    :pswitch_0
    move/from16 v19, v5

    move/from16 v20, v6

    move/from16 v0, v19

    move/from16 v1, v20

    if-ge v0, v1, :cond_65

    .line 949
    move-object/from16 v19, v4

    move/from16 v20, v5

    add-int/lit8 v5, v5, 0x1

    aget-char v19, v19, v20

    move/from16 v10, v19

    goto :goto_0

    .line 209
    :pswitch_1
    const/16 v19, 0x1

    move/from16 v7, v19

    .line 210
    const/16 v19, 0x1f

    move/from16 v7, v19

    .line 211
    goto :goto_1

    .line 214
    :pswitch_2
    move/from16 v19, v10

    const/16 v20, 0x3c

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_2

    .line 216
    const/16 v19, 0x22

    move/from16 v7, v19

    .line 217
    goto :goto_1

    .line 219
    :cond_2
    const/16 v19, 0x1

    move/from16 v7, v19

    .line 220
    goto :goto_0

    .line 223
    :pswitch_3
    move/from16 v19, v10

    const/16 v20, 0x3f

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_3

    .line 225
    move/from16 v19, v5

    move/from16 v14, v19

    .line 226
    const/16 v19, 0x21

    move/from16 v7, v19

    .line 227
    goto :goto_1

    .line 229
    :cond_3
    const/16 v19, 0xe

    move/from16 v7, v19

    .line 230
    goto :goto_0

    .line 233
    :pswitch_4
    move/from16 v19, v12

    move/from16 v5, v19

    .line 234
    const-string/jumbo v19, "invalid xml version specifier"

    move-object/from16 v13, v19

    .line 238
    :pswitch_5
    move-object/from16 v19, v2

    move/from16 v20, v5

    move/from16 v0, v20

    move-object/from16 v1, v19

    iput v0, v1, Lgnu/text/LineBufferedReader;->pos:I

    .line 239
    move-object/from16 v19, v3

    const/16 v20, 0x65

    move-object/from16 v21, v13

    invoke-virtual/range {v19 .. v21}, Lgnu/xml/XMLFilter;->error(CLjava/lang/String;)V

    .line 242
    :cond_4
    move/from16 v19, v5

    move/from16 v20, v6

    move/from16 v0, v19

    move/from16 v1, v20

    if-lt v0, v1, :cond_5

    .line 243
    .line 989
    :goto_2
    return-void

    .line 244
    :cond_5
    move-object/from16 v19, v4

    move/from16 v20, v5

    add-int/lit8 v5, v5, 0x1

    aget-char v19, v19, v20

    move/from16 v10, v19

    .line 245
    move/from16 v19, v10

    const/16 v20, 0x3e

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_4

    .line 247
    const/16 v19, 0x1

    move/from16 v7, v19

    .line 248
    goto/16 :goto_1

    .line 253
    :pswitch_6
    move-object/from16 v19, v2

    move/from16 v20, v5

    move/from16 v0, v20

    move-object/from16 v1, v19

    iput v0, v1, Lgnu/text/LineBufferedReader;->pos:I

    .line 254
    move-object/from16 v19, v3

    const/16 v20, 0x66

    const-string/jumbo v21, "unexpected end-of-file"

    invoke-virtual/range {v19 .. v21}, Lgnu/xml/XMLFilter;->error(CLjava/lang/String;)V

    .line 255
    goto :goto_2

    .line 261
    :pswitch_7
    move/from16 v19, v5

    const/16 v20, 0x1

    add-int/lit8 v19, v19, -0x1

    move/from16 v14, v19

    .line 263
    move/from16 v19, v5

    move/from16 v11, v19

    .line 266
    :goto_3
    move/from16 v19, v10

    move/from16 v20, v8

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_7

    .line 268
    move/from16 v19, v9

    move/from16 v7, v19

    .line 337
    :goto_4
    move/from16 v19, v5

    move/from16 v20, v11

    sub-int v19, v19, v20

    move/from16 v11, v19

    .line 338
    move/from16 v19, v11

    if-lez v19, :cond_6

    .line 340
    move-object/from16 v19, v2

    move/from16 v20, v5

    move/from16 v0, v20

    move-object/from16 v1, v19

    iput v0, v1, Lgnu/text/LineBufferedReader;->pos:I

    .line 341
    move-object/from16 v19, v3

    move-object/from16 v20, v4

    move/from16 v21, v14

    move/from16 v22, v11

    invoke-virtual/range {v19 .. v22}, Lgnu/xml/XMLFilter;->textFromParser([CII)V

    .line 343
    :cond_6
    move-object/from16 v19, v4

    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v19, v0

    move/from16 v14, v19

    .line 344
    goto/16 :goto_1

    .line 271
    :cond_7
    move/from16 v19, v10

    const/16 v20, 0x26

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_8

    .line 273
    const/16 v19, 0x19

    move/from16 v7, v19

    .line 274
    goto :goto_4

    .line 276
    :cond_8
    move/from16 v19, v10

    const/16 v20, 0xd

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_e

    .line 278
    move/from16 v19, v5

    move/from16 v20, v11

    sub-int v19, v19, v20

    move/from16 v11, v19

    .line 279
    move-object/from16 v19, v2

    move/from16 v20, v5

    move/from16 v0, v20

    move-object/from16 v1, v19

    iput v0, v1, Lgnu/text/LineBufferedReader;->pos:I

    .line 280
    move/from16 v19, v11

    if-lez v19, :cond_9

    .line 281
    move-object/from16 v19, v3

    move-object/from16 v20, v4

    move/from16 v21, v14

    move/from16 v22, v11

    invoke-virtual/range {v19 .. v22}, Lgnu/xml/XMLFilter;->textFromParser([CII)V

    .line 282
    :cond_9
    move/from16 v19, v5

    move/from16 v20, v6

    move/from16 v0, v19

    move/from16 v1, v20

    if-ge v0, v1, :cond_d

    .line 284
    move-object/from16 v19, v4

    move/from16 v20, v5

    aget-char v19, v19, v20

    move/from16 v10, v19

    .line 285
    move/from16 v19, v10

    const/16 v20, 0xa

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_b

    .line 287
    move/from16 v19, v5

    move/from16 v14, v19

    .line 288
    add-int/lit8 v5, v5, 0x1

    move/from16 v19, v5

    move/from16 v11, v19

    .line 306
    :goto_5
    move-object/from16 v19, v2

    const/16 v20, 0x1

    move/from16 v21, v5

    invoke-virtual/range {v19 .. v21}, Lgnu/text/LineBufferedReader;->incrLineNumber(II)V

    .line 330
    :cond_a
    :goto_6
    move/from16 v19, v5

    move/from16 v20, v6

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_12

    .line 332
    add-int/lit8 v11, v11, -0x1

    .line 333
    goto/16 :goto_4

    .line 292
    :cond_b
    move-object/from16 v19, v3

    invoke-virtual/range {v19 .. v19}, Lgnu/xml/XMLFilter;->linefeedFromParser()V

    .line 293
    move/from16 v19, v10

    const/16 v20, 0x85

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_c

    .line 295
    move/from16 v19, v5

    add-int/lit8 v5, v5, 0x1

    move/from16 v14, v19

    .line 296
    move/from16 v19, v5

    const/16 v20, 0x1

    add-int/lit8 v19, v19, 0x1

    move/from16 v11, v19

    goto :goto_5

    .line 300
    :cond_c
    move-object/from16 v19, v2

    const/16 v20, 0x1

    move/from16 v21, v5

    invoke-virtual/range {v19 .. v21}, Lgnu/text/LineBufferedReader;->incrLineNumber(II)V

    .line 301
    move/from16 v19, v5

    move/from16 v14, v19

    .line 302
    add-int/lit8 v5, v5, 0x1

    move/from16 v19, v5

    move/from16 v11, v19

    .line 303
    goto/16 :goto_3

    .line 310
    :cond_d
    move-object/from16 v19, v3

    invoke-virtual/range {v19 .. v19}, Lgnu/xml/XMLFilter;->linefeedFromParser()V

    .line 311
    const/16 v19, 0x1c

    move/from16 v7, v19

    .line 312
    goto/16 :goto_1

    .line 315
    :cond_e
    move/from16 v19, v10

    const/16 v20, 0x85

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_f

    move/from16 v19, v10

    const/16 v20, 0x2028

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_11

    .line 317
    :cond_f
    move/from16 v19, v5

    move/from16 v20, v11

    sub-int v19, v19, v20

    move/from16 v11, v19

    .line 318
    move-object/from16 v19, v2

    move/from16 v20, v5

    const/16 v21, 0x1

    add-int/lit8 v20, v20, -0x1

    move/from16 v0, v20

    move-object/from16 v1, v19

    iput v0, v1, Lgnu/text/LineBufferedReader;->pos:I

    .line 319
    move/from16 v19, v11

    if-lez v19, :cond_10

    .line 320
    move-object/from16 v19, v3

    move-object/from16 v20, v4

    move/from16 v21, v14

    move/from16 v22, v11

    invoke-virtual/range {v19 .. v22}, Lgnu/xml/XMLFilter;->textFromParser([CII)V

    .line 321
    :cond_10
    move-object/from16 v19, v3

    invoke-virtual/range {v19 .. v19}, Lgnu/xml/XMLFilter;->linefeedFromParser()V

    .line 322
    move-object/from16 v19, v2

    const/16 v20, 0x1

    move/from16 v21, v5

    invoke-virtual/range {v19 .. v21}, Lgnu/text/LineBufferedReader;->incrLineNumber(II)V

    .line 323
    move/from16 v19, v5

    const/16 v20, 0x1

    add-int/lit8 v19, v19, 0x1

    move/from16 v11, v19

    .line 324
    move/from16 v19, v5

    move/from16 v14, v19

    goto/16 :goto_6

    .line 326
    :cond_11
    move/from16 v19, v10

    const/16 v20, 0xa

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_a

    .line 328
    move-object/from16 v19, v2

    const/16 v20, 0x1

    move/from16 v21, v5

    invoke-virtual/range {v19 .. v21}, Lgnu/text/LineBufferedReader;->incrLineNumber(II)V

    goto/16 :goto_6

    .line 335
    :cond_12
    move-object/from16 v19, v4

    move/from16 v20, v5

    add-int/lit8 v5, v5, 0x1

    aget-char v19, v19, v20

    move/from16 v10, v19

    goto/16 :goto_3

    .line 349
    :pswitch_8
    const/16 v19, 0x1

    move/from16 v7, v19

    .line 350
    move/from16 v19, v10

    const/16 v20, 0xa

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_13

    const/16 v19, 0x1

    :goto_7
    move/from16 v20, v10

    const/16 v21, 0x85

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_14

    const/16 v20, 0x1

    :goto_8
    or-int v19, v19, v20

    if-eqz v19, :cond_15

    .line 352
    move-object/from16 v19, v2

    const/16 v20, 0x1

    move/from16 v21, v5

    invoke-virtual/range {v19 .. v21}, Lgnu/text/LineBufferedReader;->incrLineNumber(II)V

    .line 353
    goto/16 :goto_1

    .line 350
    :cond_13
    const/16 v19, 0x0

    goto :goto_7

    :cond_14
    const/16 v20, 0x0

    goto :goto_8

    .line 357
    :cond_15
    move-object/from16 v19, v2

    const/16 v20, 0x1

    move/from16 v21, v5

    const/16 v22, 0x1

    add-int/lit8 v21, v21, -0x1

    invoke-virtual/range {v19 .. v21}, Lgnu/text/LineBufferedReader;->incrLineNumber(II)V

    .line 358
    goto/16 :goto_0

    .line 367
    :pswitch_9
    move/from16 v19, v10

    const/16 v20, 0x20

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_1

    move/from16 v19, v10

    const/16 v20, 0x9

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_16

    .line 368
    goto/16 :goto_1

    .line 369
    :cond_16
    move/from16 v19, v10

    const/16 v20, 0xa

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_17

    move/from16 v19, v10

    const/16 v20, 0xd

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_17

    move/from16 v19, v10

    const/16 v20, 0x85

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_17

    move/from16 v19, v10

    const/16 v20, 0x2028

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_18

    .line 372
    :cond_17
    move-object/from16 v19, v2

    const/16 v20, 0x1

    move/from16 v21, v5

    invoke-virtual/range {v19 .. v21}, Lgnu/text/LineBufferedReader;->incrLineNumber(II)V

    .line 373
    goto/16 :goto_1

    .line 376
    :cond_18
    add-int/lit8 v7, v7, -0x2

    .line 377
    goto/16 :goto_0

    .line 386
    :pswitch_a
    move/from16 v19, v14

    const/16 v20, 0x1

    add-int/lit8 v19, v19, 0x1

    move/from16 v11, v19

    .line 399
    :goto_9
    move/from16 v19, v10

    const/16 v20, 0x61

    move/from16 v0, v19

    move/from16 v1, v20

    if-lt v0, v1, :cond_19

    move/from16 v19, v10

    const/16 v20, 0x7a

    move/from16 v0, v19

    move/from16 v1, v20

    if-le v0, v1, :cond_21

    :cond_19
    move/from16 v19, v10

    const/16 v20, 0x41

    move/from16 v0, v19

    move/from16 v1, v20

    if-lt v0, v1, :cond_1a

    move/from16 v19, v10

    const/16 v20, 0x5a

    move/from16 v0, v19

    move/from16 v1, v20

    if-le v0, v1, :cond_21

    :cond_1a
    move/from16 v19, v10

    const/16 v20, 0x5f

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_21

    move/from16 v19, v10

    const/16 v20, 0x3a

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_21

    move/from16 v19, v10

    const/16 v20, 0xc0

    move/from16 v0, v19

    move/from16 v1, v20

    if-lt v0, v1, :cond_1f

    move/from16 v19, v10

    const/16 v20, 0x2ff

    move/from16 v0, v19

    move/from16 v1, v20

    if-le v0, v1, :cond_21

    move/from16 v19, v10

    const/16 v20, 0x370

    move/from16 v0, v19

    move/from16 v1, v20

    if-lt v0, v1, :cond_1f

    move/from16 v19, v10

    const/16 v20, 0x1fff

    move/from16 v0, v19

    move/from16 v1, v20

    if-gt v0, v1, :cond_1b

    move/from16 v19, v10

    const/16 v20, 0x37e

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_21

    :cond_1b
    move/from16 v19, v10

    const/16 v20, 0x200c

    move/from16 v0, v19

    move/from16 v1, v20

    if-lt v0, v1, :cond_1f

    move/from16 v19, v10

    const/16 v20, 0x200d

    move/from16 v0, v19

    move/from16 v1, v20

    if-le v0, v1, :cond_21

    move/from16 v19, v10

    const/16 v20, 0x2070

    move/from16 v0, v19

    move/from16 v1, v20

    if-lt v0, v1, :cond_1c

    move/from16 v19, v10

    const/16 v20, 0x218f

    move/from16 v0, v19

    move/from16 v1, v20

    if-le v0, v1, :cond_21

    :cond_1c
    move/from16 v19, v10

    const/16 v20, 0x2c00

    move/from16 v0, v19

    move/from16 v1, v20

    if-lt v0, v1, :cond_1d

    move/from16 v19, v10

    const/16 v20, 0x2fef

    move/from16 v0, v19

    move/from16 v1, v20

    if-le v0, v1, :cond_21

    :cond_1d
    move/from16 v19, v10

    const/16 v20, 0x3001

    move/from16 v0, v19

    move/from16 v1, v20

    if-lt v0, v1, :cond_1e

    move/from16 v19, v10

    const v20, 0xd7ff

    move/from16 v0, v19

    move/from16 v1, v20

    if-le v0, v1, :cond_21

    :cond_1e
    move/from16 v19, v10

    const v20, 0xf900

    move/from16 v0, v19

    move/from16 v1, v20

    if-lt v0, v1, :cond_1f

    move/from16 v19, v10

    const v20, 0xfffd

    move/from16 v0, v19

    move/from16 v1, v20

    if-le v0, v1, :cond_21

    :cond_1f
    move/from16 v19, v5

    move/from16 v20, v11

    move/from16 v0, v19

    move/from16 v1, v20

    if-le v0, v1, :cond_20

    move/from16 v19, v10

    const/16 v20, 0x30

    move/from16 v0, v19

    move/from16 v1, v20

    if-lt v0, v1, :cond_20

    move/from16 v19, v10

    const/16 v20, 0x39

    move/from16 v0, v19

    move/from16 v1, v20

    if-le v0, v1, :cond_21

    :cond_20
    move/from16 v19, v10

    const/16 v20, 0x2e

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_21

    move/from16 v19, v10

    const/16 v20, 0x2d

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_21

    move/from16 v19, v10

    const/16 v20, 0xb7

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_21

    move/from16 v19, v10

    const/16 v20, 0x300

    move/from16 v0, v19

    move/from16 v1, v20

    if-le v0, v1, :cond_22

    move/from16 v19, v10

    const/16 v20, 0x36f

    move/from16 v0, v19

    move/from16 v1, v20

    if-le v0, v1, :cond_21

    move/from16 v19, v10

    const/16 v20, 0x203f

    move/from16 v0, v19

    move/from16 v1, v20

    if-lt v0, v1, :cond_22

    move/from16 v19, v10

    const/16 v20, 0x2040

    move/from16 v0, v19

    move/from16 v1, v20

    if-gt v0, v1, :cond_22

    .line 436
    :cond_21
    move/from16 v19, v5

    move/from16 v20, v6

    move/from16 v0, v19

    move/from16 v1, v20

    if-ge v0, v1, :cond_1

    .line 437
    move-object/from16 v19, v4

    move/from16 v20, v5

    add-int/lit8 v5, v5, 0x1

    aget-char v19, v19, v20

    move/from16 v10, v19

    goto/16 :goto_9

    .line 421
    :cond_22
    add-int/lit8 v7, v7, -0x1

    .line 422
    move/from16 v19, v5

    move/from16 v20, v11

    sub-int v19, v19, v20

    move/from16 v11, v19

    .line 423
    move/from16 v19, v11

    if-nez v19, :cond_0

    .line 425
    move/from16 v19, v7

    const/16 v20, 0x8

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_23

    .line 426
    const-string/jumbo v19, "missing or invalid attribute name"

    move-object/from16 v13, v19

    .line 432
    :goto_a
    const/16 v19, 0x24

    move/from16 v7, v19

    goto/16 :goto_0

    .line 427
    :cond_23
    move/from16 v19, v7

    const/16 v20, 0x2

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_24

    move/from16 v19, v7

    const/16 v20, 0x4

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_25

    .line 429
    :cond_24
    const-string/jumbo v19, "missing or invalid element name"

    move-object/from16 v13, v19

    goto :goto_a

    .line 431
    :cond_25
    const-string/jumbo v19, "missing or invalid name"

    move-object/from16 v13, v19

    goto :goto_a

    .line 452
    :cond_26
    move/from16 v19, v10

    const/16 v20, 0x78

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_27

    move/from16 v19, v12

    if-nez v19, :cond_27

    .line 453
    const/16 v19, 0x10

    move/from16 v12, v19

    .line 464
    :goto_b
    move/from16 v19, v5

    move/from16 v20, v6

    move/from16 v0, v19

    move/from16 v1, v20

    if-ge v0, v1, :cond_1

    .line 465
    move-object/from16 v19, v4

    move/from16 v20, v5

    add-int/lit8 v5, v5, 0x1

    aget-char v19, v19, v20

    move/from16 v10, v19

    .line 444
    :pswitch_b
    move/from16 v19, v10

    const/16 v20, 0x3b

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_26

    .line 446
    move-object/from16 v19, v2

    move/from16 v20, v5

    move/from16 v0, v20

    move-object/from16 v1, v19

    iput v0, v1, Lgnu/text/LineBufferedReader;->pos:I

    .line 447
    move-object/from16 v19, v3

    move/from16 v20, v11

    move-object/from16 v21, v4

    move/from16 v22, v14

    move/from16 v23, v5

    const/16 v24, 0x1

    add-int/lit8 v23, v23, -0x1

    move/from16 v24, v14

    sub-int v23, v23, v24

    invoke-virtual/range {v19 .. v23}, Lgnu/xml/XMLFilter;->emitCharacterReference(I[CII)V

    .line 449
    const/16 v19, 0x1

    move/from16 v7, v19

    .line 450
    goto/16 :goto_1

    .line 454
    :cond_27
    move/from16 v19, v11

    const/high16 v20, 0x8000000

    move/from16 v0, v19

    move/from16 v1, v20

    if-lt v0, v1, :cond_28

    .line 455
    .line 469
    :goto_c
    move-object/from16 v19, v2

    move/from16 v20, v5

    move/from16 v0, v20

    move-object/from16 v1, v19

    iput v0, v1, Lgnu/text/LineBufferedReader;->pos:I

    .line 470
    move-object/from16 v19, v3

    const/16 v20, 0x65

    const-string/jumbo v21, "invalid character reference"

    invoke-virtual/range {v19 .. v21}, Lgnu/xml/XMLFilter;->error(CLjava/lang/String;)V

    .line 471
    const/16 v19, 0x1

    move/from16 v7, v19

    .line 472
    goto/16 :goto_1

    .line 458
    :cond_28
    move/from16 v19, v12

    if-nez v19, :cond_29

    const/16 v19, 0xa

    :goto_d
    move/from16 v15, v19

    .line 459
    .local v15, "base":I
    move/from16 v19, v10

    move/from16 v20, v15

    invoke-static/range {v19 .. v20}, Ljava/lang/Character;->digit(CI)I

    move-result v19

    move/from16 v16, v19

    .line 460
    .local v16, "digit":I
    move/from16 v19, v16

    if-gez v19, :cond_2a

    .line 461
    goto :goto_c

    .line 458
    .end local v15    # "base":I
    .end local v16    # "digit":I
    :cond_29
    move/from16 v19, v12

    goto :goto_d

    .line 462
    .restart local v15    # "base":I
    .restart local v16    # "digit":I
    :cond_2a
    move/from16 v19, v11

    move/from16 v20, v15

    mul-int v19, v19, v20

    move/from16 v20, v16

    add-int v19, v19, v20

    move/from16 v11, v19

    goto/16 :goto_b

    .line 475
    .end local v15    # "base":I
    .end local v16    # "digit":I
    :pswitch_c
    move/from16 v19, v10

    const/16 v20, 0x23

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_2b

    .line 477
    const/16 v19, 0x1a

    move/from16 v7, v19

    .line 478
    move/from16 v19, v5

    move/from16 v14, v19

    .line 479
    const/16 v19, 0x0

    move/from16 v11, v19

    .line 480
    const/16 v19, 0x0

    move/from16 v12, v19

    .line 481
    goto/16 :goto_1

    .line 483
    :cond_2b
    move/from16 v19, v5

    const/16 v20, 0x1

    add-int/lit8 v19, v19, -0x1

    move/from16 v14, v19

    .line 484
    const/16 v19, 0x7

    move/from16 v7, v19

    .line 485
    goto/16 :goto_0

    .line 488
    :pswitch_d
    move-object/from16 v19, v2

    move/from16 v20, v5

    move/from16 v0, v20

    move-object/from16 v1, v19

    iput v0, v1, Lgnu/text/LineBufferedReader;->pos:I

    .line 489
    move/from16 v19, v10

    const/16 v20, 0x3b

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_2c

    .line 490
    move-object/from16 v19, v3

    const/16 v20, 0x77

    const-string/jumbo v21, "missing \';\'"

    invoke-virtual/range {v19 .. v21}, Lgnu/xml/XMLFilter;->error(CLjava/lang/String;)V

    .line 491
    :cond_2c
    move-object/from16 v19, v3

    move-object/from16 v20, v4

    move/from16 v21, v14

    move/from16 v22, v11

    invoke-virtual/range {v19 .. v22}, Lgnu/xml/XMLFilter;->emitEntityReference([CII)V

    .line 492
    move/from16 v19, v6

    move/from16 v14, v19

    .line 493
    const/16 v19, 0x1

    move/from16 v7, v19

    .line 494
    goto/16 :goto_1

    .line 497
    :pswitch_e
    move/from16 v19, v10

    const/16 v20, 0x2f

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_2d

    .line 499
    const/16 v19, 0x13

    move/from16 v7, v19

    .line 500
    goto/16 :goto_1

    .line 502
    :cond_2d
    move/from16 v19, v10

    const/16 v20, 0x3f

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_2e

    .line 504
    move/from16 v19, v5

    move/from16 v14, v19

    .line 505
    const/16 v19, 0x18

    move/from16 v7, v19

    .line 506
    goto/16 :goto_1

    .line 508
    :cond_2e
    move/from16 v19, v10

    const/16 v20, 0x21

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_2f

    .line 510
    const/16 v19, 0x14

    move/from16 v7, v19

    .line 511
    move/from16 v19, v5

    move/from16 v14, v19

    .line 512
    goto/16 :goto_1

    .line 515
    :cond_2f
    move/from16 v19, v5

    const/16 v20, 0x1

    add-int/lit8 v19, v19, -0x1

    move/from16 v14, v19

    .line 516
    const/16 v19, 0x3

    move/from16 v7, v19

    .line 517
    goto/16 :goto_0

    .line 519
    :pswitch_f
    move-object/from16 v19, v2

    move/from16 v20, v5

    move/from16 v21, v11

    sub-int v20, v20, v21

    move/from16 v0, v20

    move-object/from16 v1, v19

    iput v0, v1, Lgnu/text/LineBufferedReader;->pos:I

    .line 520
    move-object/from16 v19, v3

    move-object/from16 v20, v4

    move/from16 v21, v14

    move/from16 v22, v11

    invoke-virtual/range {v19 .. v22}, Lgnu/xml/XMLFilter;->emitStartElement([CII)V

    .line 521
    const/16 v19, 0xc

    move/from16 v7, v19

    .line 522
    move/from16 v19, v6

    move/from16 v14, v19

    .line 523
    goto/16 :goto_0

    .line 527
    :pswitch_10
    move/from16 v19, v12

    if-gez v19, :cond_30

    .line 528
    move/from16 v19, v5

    const/16 v20, 0x1

    add-int/lit8 v19, v19, -0x1

    move/from16 v12, v19

    .line 532
    :cond_30
    :goto_e
    move/from16 v19, v10

    const/16 v20, 0x3e

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_51

    move-object/from16 v19, v4

    move/from16 v20, v5

    const/16 v21, 0x2

    add-int/lit8 v20, v20, -0x2

    move/from16 v26, v20

    move/from16 v20, v26

    move/from16 v21, v26

    move/from16 v15, v21

    .local v15, "end":I
    aget-char v19, v19, v20

    const/16 v20, 0x3f

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_51

    move/from16 v19, v15

    move/from16 v20, v12

    move/from16 v0, v19

    move/from16 v1, v20

    if-lt v0, v1, :cond_51

    .line 536
    move-object/from16 v19, v2

    move/from16 v20, v5

    move/from16 v0, v20

    move-object/from16 v1, v19

    iput v0, v1, Lgnu/text/LineBufferedReader;->pos:I

    .line 537
    move/from16 v19, v11

    const/16 v20, 0x3

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_50

    move-object/from16 v19, v4

    move/from16 v20, v14

    aget-char v19, v19, v20

    const/16 v20, 0x78

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_50

    move-object/from16 v19, v4

    move/from16 v20, v14

    const/16 v21, 0x1

    add-int/lit8 v20, v20, 0x1

    aget-char v19, v19, v20

    const/16 v20, 0x6d

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_50

    move-object/from16 v19, v4

    move/from16 v20, v14

    const/16 v21, 0x2

    add-int/lit8 v20, v20, 0x2

    aget-char v19, v19, v20

    const/16 v20, 0x6c

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_50

    .line 542
    move/from16 v19, v7

    const/16 v20, 0x1e

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_4f

    .line 544
    move/from16 v19, v15

    move/from16 v20, v12

    const/16 v21, 0x7

    add-int/lit8 v20, v20, 0x7

    move/from16 v0, v19

    move/from16 v1, v20

    if-le v0, v1, :cond_31

    move-object/from16 v19, v4

    move/from16 v20, v12

    aget-char v19, v19, v20

    const/16 v20, 0x76

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_31

    move-object/from16 v19, v4

    move/from16 v20, v12

    const/16 v21, 0x1

    add-int/lit8 v20, v20, 0x1

    aget-char v19, v19, v20

    const/16 v20, 0x65

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_31

    move-object/from16 v19, v4

    move/from16 v20, v12

    const/16 v21, 0x2

    add-int/lit8 v20, v20, 0x2

    aget-char v19, v19, v20

    const/16 v20, 0x72

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_31

    move-object/from16 v19, v4

    move/from16 v20, v12

    const/16 v21, 0x3

    add-int/lit8 v20, v20, 0x3

    aget-char v19, v19, v20

    const/16 v20, 0x73

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_31

    move-object/from16 v19, v4

    move/from16 v20, v12

    const/16 v21, 0x4

    add-int/lit8 v20, v20, 0x4

    aget-char v19, v19, v20

    const/16 v20, 0x69

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_31

    move-object/from16 v19, v4

    move/from16 v20, v12

    const/16 v21, 0x5

    add-int/lit8 v20, v20, 0x5

    aget-char v19, v19, v20

    const/16 v20, 0x6f

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_31

    move-object/from16 v19, v4

    move/from16 v20, v12

    const/16 v21, 0x6

    add-int/lit8 v20, v20, 0x6

    aget-char v19, v19, v20

    const/16 v20, 0x6e

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_32

    .line 553
    :cond_31
    move/from16 v19, v12

    move/from16 v5, v19

    .line 554
    const-string/jumbo v19, "xml declaration without version"

    move-object/from16 v13, v19

    .line 555
    const/16 v19, 0x24

    move/from16 v7, v19

    .line 556
    goto/16 :goto_0

    .line 558
    :cond_32
    add-int/lit8 v12, v12, 0x7

    .line 559
    move-object/from16 v19, v4

    move/from16 v20, v12

    aget-char v19, v19, v20

    move/from16 v10, v19

    .line 561
    :goto_f
    move/from16 v19, v10

    invoke-static/range {v19 .. v19}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v19

    if-eqz v19, :cond_33

    add-int/lit8 v12, v12, 0x1

    move/from16 v19, v12

    move/from16 v20, v15

    move/from16 v0, v19

    move/from16 v1, v20

    if-ge v0, v1, :cond_33

    .line 562
    move-object/from16 v19, v4

    move/from16 v20, v12

    aget-char v19, v19, v20

    move/from16 v10, v19

    goto :goto_f

    .line 563
    :cond_33
    move/from16 v19, v10

    const/16 v20, 0x3d

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_34

    .line 565
    const/16 v19, 0x23

    move/from16 v7, v19

    .line 566
    goto/16 :goto_0

    .line 568
    :cond_34
    move-object/from16 v19, v4

    add-int/lit8 v12, v12, 0x1

    move/from16 v20, v12

    aget-char v19, v19, v20

    move/from16 v10, v19

    .line 570
    :goto_10
    move/from16 v19, v10

    invoke-static/range {v19 .. v19}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v19

    if-eqz v19, :cond_35

    add-int/lit8 v12, v12, 0x1

    move/from16 v19, v12

    move/from16 v20, v15

    move/from16 v0, v19

    move/from16 v1, v20

    if-ge v0, v1, :cond_35

    .line 571
    move-object/from16 v19, v4

    move/from16 v20, v12

    aget-char v19, v19, v20

    move/from16 v10, v19

    goto :goto_10

    .line 572
    :cond_35
    move/from16 v19, v10

    const/16 v20, 0x27

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_36

    move/from16 v19, v10

    const/16 v20, 0x22

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_36

    .line 574
    const/16 v19, 0x23

    move/from16 v7, v19

    .line 575
    goto/16 :goto_0

    .line 577
    :cond_36
    move/from16 v19, v10

    move/from16 v16, v19

    .line 578
    .local v16, "quote":C
    add-int/lit8 v12, v12, 0x1

    move/from16 v19, v12

    move/from16 v17, v19

    .line 581
    .local v17, "i":I
    :goto_11
    move/from16 v19, v17

    move/from16 v20, v15

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_37

    .line 583
    const/16 v19, 0x23

    move/from16 v7, v19

    .line 584
    goto/16 :goto_0

    .line 586
    :cond_37
    move-object/from16 v19, v4

    move/from16 v20, v17

    aget-char v19, v19, v20

    move/from16 v10, v19

    .line 587
    move/from16 v19, v10

    move/from16 v20, v16

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_3a

    .line 588
    .line 590
    move/from16 v19, v17

    move/from16 v20, v12

    const/16 v21, 0x3

    add-int/lit8 v20, v20, 0x3

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_38

    move-object/from16 v19, v4

    move/from16 v20, v12

    aget-char v19, v19, v20

    const/16 v20, 0x31

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_38

    move-object/from16 v19, v4

    move/from16 v20, v12

    const/16 v21, 0x1

    add-int/lit8 v20, v20, 0x1

    aget-char v19, v19, v20

    const/16 v20, 0x2e

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_38

    move-object/from16 v19, v4

    move/from16 v20, v12

    const/16 v21, 0x2

    add-int/lit8 v20, v20, 0x2

    aget-char v19, v19, v20

    move/from16 v26, v19

    move/from16 v19, v26

    move/from16 v20, v26

    move/from16 v10, v20

    const/16 v20, 0x30

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_39

    :cond_38
    move/from16 v19, v10

    const/16 v20, 0x31

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_3b

    .line 601
    :cond_39
    move/from16 v19, v17

    const/16 v20, 0x1

    add-int/lit8 v19, v19, 0x1

    move/from16 v12, v19

    .line 603
    :goto_12
    move/from16 v19, v12

    move/from16 v20, v15

    move/from16 v0, v19

    move/from16 v1, v20

    if-ge v0, v1, :cond_3c

    move-object/from16 v19, v4

    move/from16 v20, v12

    aget-char v19, v19, v20

    invoke-static/range {v19 .. v19}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v19

    if-eqz v19, :cond_3c

    .line 604
    add-int/lit8 v12, v12, 0x1

    goto :goto_12

    .line 579
    :cond_3a
    add-int/lit8 v17, v17, 0x1

    goto/16 :goto_11

    .line 598
    :cond_3b
    const/16 v19, 0x23

    move/from16 v7, v19

    .line 599
    goto/16 :goto_0

    .line 605
    :cond_3c
    move/from16 v19, v15

    move/from16 v20, v12

    const/16 v21, 0x7

    add-int/lit8 v20, v20, 0x7

    move/from16 v0, v19

    move/from16 v1, v20

    if-le v0, v1, :cond_44

    move-object/from16 v19, v4

    move/from16 v20, v12

    aget-char v19, v19, v20

    const/16 v20, 0x65

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_44

    move-object/from16 v19, v4

    move/from16 v20, v12

    const/16 v21, 0x1

    add-int/lit8 v20, v20, 0x1

    aget-char v19, v19, v20

    const/16 v20, 0x6e

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_44

    move-object/from16 v19, v4

    move/from16 v20, v12

    const/16 v21, 0x2

    add-int/lit8 v20, v20, 0x2

    aget-char v19, v19, v20

    const/16 v20, 0x63

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_44

    move-object/from16 v19, v4

    move/from16 v20, v12

    const/16 v21, 0x3

    add-int/lit8 v20, v20, 0x3

    aget-char v19, v19, v20

    const/16 v20, 0x6f

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_44

    move-object/from16 v19, v4

    move/from16 v20, v12

    const/16 v21, 0x4

    add-int/lit8 v20, v20, 0x4

    aget-char v19, v19, v20

    const/16 v20, 0x64

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_44

    move-object/from16 v19, v4

    move/from16 v20, v12

    const/16 v21, 0x5

    add-int/lit8 v20, v20, 0x5

    aget-char v19, v19, v20

    const/16 v20, 0x69

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_44

    move-object/from16 v19, v4

    move/from16 v20, v12

    const/16 v21, 0x6

    add-int/lit8 v20, v20, 0x6

    aget-char v19, v19, v20

    const/16 v20, 0x6e

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_44

    move-object/from16 v19, v4

    move/from16 v20, v12

    const/16 v21, 0x7

    add-int/lit8 v20, v20, 0x7

    aget-char v19, v19, v20

    const/16 v20, 0x67

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_44

    .line 615
    add-int/lit8 v12, v12, 0x8

    .line 616
    move-object/from16 v19, v4

    move/from16 v20, v12

    aget-char v19, v19, v20

    move/from16 v10, v19

    .line 618
    :goto_13
    move/from16 v19, v10

    invoke-static/range {v19 .. v19}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v19

    if-eqz v19, :cond_3d

    add-int/lit8 v12, v12, 0x1

    move/from16 v19, v12

    move/from16 v20, v15

    move/from16 v0, v19

    move/from16 v1, v20

    if-ge v0, v1, :cond_3d

    .line 619
    move-object/from16 v19, v4

    move/from16 v20, v12

    aget-char v19, v19, v20

    move/from16 v10, v19

    goto :goto_13

    .line 620
    :cond_3d
    move/from16 v19, v10

    const/16 v20, 0x3d

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_3e

    .line 622
    const-string/jumbo v19, "bad \'encoding\' declaration"

    move-object/from16 v13, v19

    .line 623
    const/16 v19, 0x24

    move/from16 v7, v19

    .line 624
    goto/16 :goto_0

    .line 626
    :cond_3e
    move-object/from16 v19, v4

    add-int/lit8 v12, v12, 0x1

    move/from16 v20, v12

    aget-char v19, v19, v20

    move/from16 v10, v19

    .line 628
    :goto_14
    move/from16 v19, v10

    invoke-static/range {v19 .. v19}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v19

    if-eqz v19, :cond_3f

    add-int/lit8 v12, v12, 0x1

    move/from16 v19, v12

    move/from16 v20, v15

    move/from16 v0, v19

    move/from16 v1, v20

    if-ge v0, v1, :cond_3f

    .line 629
    move-object/from16 v19, v4

    move/from16 v20, v12

    aget-char v19, v19, v20

    move/from16 v10, v19

    goto :goto_14

    .line 630
    :cond_3f
    move/from16 v19, v10

    const/16 v20, 0x27

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_40

    move/from16 v19, v10

    const/16 v20, 0x22

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_40

    .line 632
    const-string/jumbo v19, "bad \'encoding\' declaration"

    move-object/from16 v13, v19

    .line 633
    const/16 v19, 0x24

    move/from16 v7, v19

    .line 634
    goto/16 :goto_0

    .line 636
    :cond_40
    move/from16 v19, v10

    move/from16 v16, v19

    .line 637
    add-int/lit8 v12, v12, 0x1

    move/from16 v19, v12

    move/from16 v17, v19

    .line 640
    :goto_15
    move/from16 v19, v17

    move/from16 v20, v15

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_41

    .line 642
    const-string/jumbo v19, "bad \'encoding\' declaration"

    move-object/from16 v13, v19

    .line 643
    const/16 v19, 0x24

    move/from16 v7, v19

    .line 644
    goto/16 :goto_0

    .line 646
    :cond_41
    move-object/from16 v19, v4

    move/from16 v20, v17

    aget-char v19, v19, v20

    move/from16 v10, v19

    .line 647
    move/from16 v19, v10

    move/from16 v20, v16

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_43

    .line 648
    .line 650
    new-instance v19, Ljava/lang/String;

    move-object/from16 v26, v19

    move-object/from16 v19, v26

    move-object/from16 v20, v26

    move-object/from16 v21, v4

    move/from16 v22, v12

    move/from16 v23, v17

    move/from16 v24, v12

    sub-int v23, v23, v24

    invoke-direct/range {v20 .. v23}, Ljava/lang/String;-><init>([CII)V

    move-object/from16 v18, v19

    .line 651
    .local v18, "encoding":Ljava/lang/String;
    move-object/from16 v19, v2

    move-object/from16 v0, v19

    instance-of v0, v0, Lgnu/text/LineInputStreamReader;

    move/from16 v19, v0

    if-eqz v19, :cond_42

    .line 652
    move-object/from16 v19, v2

    check-cast v19, Lgnu/text/LineInputStreamReader;

    move-object/from16 v20, v18

    invoke-virtual/range {v19 .. v20}, Lgnu/text/LineInputStreamReader;->setCharset(Ljava/lang/String;)V

    .line 653
    :cond_42
    move/from16 v19, v17

    const/16 v20, 0x1

    add-int/lit8 v19, v19, 0x1

    move/from16 v12, v19

    .line 655
    :goto_16
    move/from16 v19, v12

    move/from16 v20, v15

    move/from16 v0, v19

    move/from16 v1, v20

    if-ge v0, v1, :cond_44

    move-object/from16 v19, v4

    move/from16 v20, v12

    aget-char v19, v19, v20

    invoke-static/range {v19 .. v19}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v19

    if-eqz v19, :cond_44

    .line 656
    add-int/lit8 v12, v12, 0x1

    goto :goto_16

    .line 638
    .end local v18    # "encoding":Ljava/lang/String;
    :cond_43
    add-int/lit8 v17, v17, 0x1

    goto :goto_15

    .line 658
    :cond_44
    move/from16 v19, v15

    move/from16 v20, v12

    const/16 v21, 0x9

    add-int/lit8 v20, v20, 0x9

    move/from16 v0, v19

    move/from16 v1, v20

    if-le v0, v1, :cond_4d

    move-object/from16 v19, v4

    move/from16 v20, v12

    aget-char v19, v19, v20

    const/16 v20, 0x73

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_4d

    move-object/from16 v19, v4

    move/from16 v20, v12

    const/16 v21, 0x1

    add-int/lit8 v20, v20, 0x1

    aget-char v19, v19, v20

    const/16 v20, 0x74

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_4d

    move-object/from16 v19, v4

    move/from16 v20, v12

    const/16 v21, 0x2

    add-int/lit8 v20, v20, 0x2

    aget-char v19, v19, v20

    const/16 v20, 0x61

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_4d

    move-object/from16 v19, v4

    move/from16 v20, v12

    const/16 v21, 0x3

    add-int/lit8 v20, v20, 0x3

    aget-char v19, v19, v20

    const/16 v20, 0x6e

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_4d

    move-object/from16 v19, v4

    move/from16 v20, v12

    const/16 v21, 0x4

    add-int/lit8 v20, v20, 0x4

    aget-char v19, v19, v20

    const/16 v20, 0x64

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_4d

    move-object/from16 v19, v4

    move/from16 v20, v12

    const/16 v21, 0x5

    add-int/lit8 v20, v20, 0x5

    aget-char v19, v19, v20

    const/16 v20, 0x61

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_4d

    move-object/from16 v19, v4

    move/from16 v20, v12

    const/16 v21, 0x6

    add-int/lit8 v20, v20, 0x6

    aget-char v19, v19, v20

    const/16 v20, 0x6c

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_4d

    move-object/from16 v19, v4

    move/from16 v20, v12

    const/16 v21, 0x7

    add-int/lit8 v20, v20, 0x7

    aget-char v19, v19, v20

    const/16 v20, 0x6f

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_4d

    move-object/from16 v19, v4

    move/from16 v20, v12

    const/16 v21, 0x8

    add-int/lit8 v20, v20, 0x8

    aget-char v19, v19, v20

    const/16 v20, 0x6e

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_4d

    move-object/from16 v19, v4

    move/from16 v20, v12

    const/16 v21, 0x9

    add-int/lit8 v20, v20, 0x9

    aget-char v19, v19, v20

    const/16 v20, 0x65

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_4d

    .line 670
    add-int/lit8 v12, v12, 0xa

    .line 671
    move-object/from16 v19, v4

    move/from16 v20, v12

    aget-char v19, v19, v20

    move/from16 v10, v19

    .line 673
    :goto_17
    move/from16 v19, v10

    invoke-static/range {v19 .. v19}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v19

    if-eqz v19, :cond_45

    add-int/lit8 v12, v12, 0x1

    move/from16 v19, v12

    move/from16 v20, v15

    move/from16 v0, v19

    move/from16 v1, v20

    if-ge v0, v1, :cond_45

    .line 674
    move-object/from16 v19, v4

    move/from16 v20, v12

    aget-char v19, v19, v20

    move/from16 v10, v19

    goto :goto_17

    .line 675
    :cond_45
    move/from16 v19, v10

    const/16 v20, 0x3d

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_46

    .line 677
    const-string/jumbo v19, "bad \'standalone\' declaration"

    move-object/from16 v13, v19

    .line 678
    const/16 v19, 0x24

    move/from16 v7, v19

    .line 679
    goto/16 :goto_0

    .line 681
    :cond_46
    move-object/from16 v19, v4

    add-int/lit8 v12, v12, 0x1

    move/from16 v20, v12

    aget-char v19, v19, v20

    move/from16 v10, v19

    .line 683
    :goto_18
    move/from16 v19, v10

    invoke-static/range {v19 .. v19}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v19

    if-eqz v19, :cond_47

    add-int/lit8 v12, v12, 0x1

    move/from16 v19, v12

    move/from16 v20, v15

    move/from16 v0, v19

    move/from16 v1, v20

    if-ge v0, v1, :cond_47

    .line 684
    move-object/from16 v19, v4

    move/from16 v20, v12

    aget-char v19, v19, v20

    move/from16 v10, v19

    goto :goto_18

    .line 685
    :cond_47
    move/from16 v19, v10

    const/16 v20, 0x27

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_48

    move/from16 v19, v10

    const/16 v20, 0x22

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_48

    .line 687
    const-string/jumbo v19, "bad \'standalone\' declaration"

    move-object/from16 v13, v19

    .line 688
    const/16 v19, 0x24

    move/from16 v7, v19

    .line 689
    goto/16 :goto_0

    .line 691
    :cond_48
    move/from16 v19, v10

    move/from16 v16, v19

    .line 692
    add-int/lit8 v12, v12, 0x1

    move/from16 v19, v12

    move/from16 v17, v19

    .line 695
    :goto_19
    move/from16 v19, v17

    move/from16 v20, v15

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_49

    .line 697
    const-string/jumbo v19, "bad \'standalone\' declaration"

    move-object/from16 v13, v19

    .line 698
    const/16 v19, 0x24

    move/from16 v7, v19

    .line 699
    goto/16 :goto_0

    .line 701
    :cond_49
    move-object/from16 v19, v4

    move/from16 v20, v17

    aget-char v19, v19, v20

    move/from16 v10, v19

    .line 702
    move/from16 v19, v10

    move/from16 v20, v16

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_4a

    .line 703
    .line 705
    move/from16 v19, v17

    move/from16 v20, v12

    const/16 v21, 0x3

    add-int/lit8 v20, v20, 0x3

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_4b

    move-object/from16 v19, v4

    move/from16 v20, v12

    aget-char v19, v19, v20

    const/16 v20, 0x79

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_4b

    move-object/from16 v19, v4

    move/from16 v20, v12

    const/16 v21, 0x1

    add-int/lit8 v20, v20, 0x1

    aget-char v19, v19, v20

    const/16 v20, 0x65

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_4b

    move-object/from16 v19, v4

    move/from16 v20, v12

    const/16 v21, 0x2

    add-int/lit8 v20, v20, 0x2

    aget-char v19, v19, v20

    const/16 v20, 0x73

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_4b

    .line 722
    :goto_1a
    move/from16 v19, v17

    const/16 v20, 0x1

    add-int/lit8 v19, v19, 0x1

    move/from16 v12, v19

    .line 724
    :goto_1b
    move/from16 v19, v12

    move/from16 v20, v15

    move/from16 v0, v19

    move/from16 v1, v20

    if-ge v0, v1, :cond_4d

    move-object/from16 v19, v4

    move/from16 v20, v12

    aget-char v19, v19, v20

    invoke-static/range {v19 .. v19}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v19

    if-eqz v19, :cond_4d

    .line 725
    add-int/lit8 v12, v12, 0x1

    goto :goto_1b

    .line 693
    :cond_4a
    add-int/lit8 v17, v17, 0x1

    goto/16 :goto_19

    .line 711
    :cond_4b
    move/from16 v19, v17

    move/from16 v20, v12

    const/16 v21, 0x2

    add-int/lit8 v20, v20, 0x2

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_4c

    move-object/from16 v19, v4

    move/from16 v20, v12

    aget-char v19, v19, v20

    const/16 v20, 0x6e

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_4c

    move-object/from16 v19, v4

    move/from16 v20, v12

    const/16 v21, 0x1

    add-int/lit8 v20, v20, 0x1

    aget-char v19, v19, v20

    const/16 v20, 0x6f

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_4c

    goto :goto_1a

    .line 718
    :cond_4c
    const-string/jumbo v19, "bad \'standalone\' declaration"

    move-object/from16 v13, v19

    .line 719
    const/16 v19, 0x24

    move/from16 v7, v19

    .line 720
    goto/16 :goto_0

    .line 727
    :cond_4d
    move/from16 v19, v15

    move/from16 v20, v12

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_4e

    .line 729
    const-string/jumbo v19, "junk at end of xml declaration"

    move-object/from16 v13, v19

    .line 730
    move/from16 v19, v12

    move/from16 v5, v19

    .line 731
    const/16 v19, 0x24

    move/from16 v7, v19

    .line 732
    goto/16 :goto_0

    .line 734
    .line 745
    .end local v16    # "quote":C
    .end local v17    # "i":I
    :cond_4e
    :goto_1c
    move/from16 v19, v6

    move/from16 v14, v19

    .line 746
    const/16 v19, -0x1

    move/from16 v12, v19

    .line 747
    const/16 v19, 0x1

    move/from16 v7, v19

    .line 748
    goto/16 :goto_1

    .line 737
    :cond_4f
    const-string/jumbo v19, "<?xml must be at start of file"

    move-object/from16 v13, v19

    .line 738
    const/16 v19, 0x24

    move/from16 v7, v19

    .line 739
    goto/16 :goto_0

    .line 743
    :cond_50
    move-object/from16 v19, v3

    move-object/from16 v20, v4

    move/from16 v21, v14

    move/from16 v22, v11

    move/from16 v23, v12

    move/from16 v24, v15

    move/from16 v25, v12

    sub-int v24, v24, v25

    invoke-virtual/range {v19 .. v24}, Lgnu/xml/XMLFilter;->processingInstructionFromParser([CIIII)V

    goto :goto_1c

    .line 750
    .end local v15    # "end":I
    :cond_51
    move/from16 v19, v5

    move/from16 v20, v6

    move/from16 v0, v19

    move/from16 v1, v20

    if-ge v0, v1, :cond_1

    .line 751
    move-object/from16 v19, v4

    move/from16 v20, v5

    add-int/lit8 v5, v5, 0x1

    aget-char v19, v19, v20

    move/from16 v10, v19

    goto/16 :goto_e

    .line 811
    :cond_52
    move/from16 v19, v5

    move/from16 v20, v6

    move/from16 v0, v19

    move/from16 v1, v20

    if-ge v0, v1, :cond_1

    .line 812
    move-object/from16 v19, v4

    move/from16 v20, v5

    add-int/lit8 v5, v5, 0x1

    aget-char v19, v19, v20

    move/from16 v10, v19

    .line 760
    :pswitch_11
    move/from16 v19, v10

    const/16 v20, 0x3e

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_55

    .line 762
    move/from16 v19, v5

    const/16 v20, 0x1

    add-int/lit8 v19, v19, -0x1

    move/from16 v20, v14

    sub-int v19, v19, v20

    move/from16 v11, v19

    .line 763
    move/from16 v19, v11

    const/16 v20, 0x4

    move/from16 v0, v19

    move/from16 v1, v20

    if-lt v0, v1, :cond_54

    move-object/from16 v19, v4

    move/from16 v20, v14

    aget-char v19, v19, v20

    const/16 v20, 0x2d

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_54

    move-object/from16 v19, v4

    move/from16 v20, v14

    const/16 v21, 0x1

    add-int/lit8 v20, v20, 0x1

    aget-char v19, v19, v20

    const/16 v20, 0x2d

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_54

    .line 767
    move-object/from16 v19, v4

    move/from16 v20, v5

    const/16 v21, 0x2

    add-int/lit8 v20, v20, -0x2

    aget-char v19, v19, v20

    const/16 v20, 0x2d

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_52

    move-object/from16 v19, v4

    move/from16 v20, v5

    const/16 v21, 0x3

    add-int/lit8 v20, v20, -0x3

    aget-char v19, v19, v20

    const/16 v20, 0x2d

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_52

    .line 770
    move-object/from16 v19, v2

    move/from16 v20, v5

    move/from16 v0, v20

    move-object/from16 v1, v19

    iput v0, v1, Lgnu/text/LineBufferedReader;->pos:I

    .line 771
    move-object/from16 v19, v3

    move-object/from16 v20, v4

    move/from16 v21, v14

    const/16 v22, 0x2

    add-int/lit8 v21, v21, 0x2

    move/from16 v22, v11

    const/16 v23, 0x4

    add-int/lit8 v22, v22, -0x4

    invoke-virtual/range {v19 .. v22}, Lgnu/xml/XMLFilter;->commentFromParser([CII)V

    .line 772
    .line 816
    :cond_53
    :goto_1d
    move/from16 v19, v6

    move/from16 v14, v19

    .line 817
    const/16 v19, 0x1

    move/from16 v7, v19

    .line 818
    goto/16 :goto_1

    .line 775
    :cond_54
    move/from16 v19, v11

    const/16 v20, 0x6

    move/from16 v0, v19

    move/from16 v1, v20

    if-lt v0, v1, :cond_53

    move-object/from16 v19, v4

    move/from16 v20, v14

    aget-char v19, v19, v20

    const/16 v20, 0x5b

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_53

    move-object/from16 v19, v4

    move/from16 v20, v14

    const/16 v21, 0x1

    add-int/lit8 v20, v20, 0x1

    aget-char v19, v19, v20

    const/16 v20, 0x43

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_53

    move-object/from16 v19, v4

    move/from16 v20, v14

    const/16 v21, 0x2

    add-int/lit8 v20, v20, 0x2

    aget-char v19, v19, v20

    const/16 v20, 0x44

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_53

    move-object/from16 v19, v4

    move/from16 v20, v14

    const/16 v21, 0x3

    add-int/lit8 v20, v20, 0x3

    aget-char v19, v19, v20

    const/16 v20, 0x41

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_53

    move-object/from16 v19, v4

    move/from16 v20, v14

    const/16 v21, 0x4

    add-int/lit8 v20, v20, 0x4

    aget-char v19, v19, v20

    const/16 v20, 0x54

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_53

    move-object/from16 v19, v4

    move/from16 v20, v14

    const/16 v21, 0x5

    add-int/lit8 v20, v20, 0x5

    aget-char v19, v19, v20

    const/16 v20, 0x41

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_53

    move-object/from16 v19, v4

    move/from16 v20, v14

    const/16 v21, 0x6

    add-int/lit8 v20, v20, 0x6

    aget-char v19, v19, v20

    const/16 v20, 0x5b

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_53

    .line 784
    move-object/from16 v19, v4

    move/from16 v20, v5

    const/16 v21, 0x2

    add-int/lit8 v20, v20, -0x2

    aget-char v19, v19, v20

    const/16 v20, 0x5d

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_52

    move-object/from16 v19, v4

    move/from16 v20, v5

    const/16 v21, 0x3

    add-int/lit8 v20, v20, -0x3

    aget-char v19, v19, v20

    const/16 v20, 0x5d

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_52

    .line 787
    move-object/from16 v19, v2

    move/from16 v20, v5

    move/from16 v0, v20

    move-object/from16 v1, v19

    iput v0, v1, Lgnu/text/LineBufferedReader;->pos:I

    .line 788
    move-object/from16 v19, v3

    move-object/from16 v20, v4

    move/from16 v21, v14

    const/16 v22, 0x7

    add-int/lit8 v21, v21, 0x7

    move/from16 v22, v5

    const/16 v23, 0xa

    add-int/lit8 v22, v22, -0xa

    move/from16 v23, v14

    sub-int v22, v22, v23

    invoke-virtual/range {v19 .. v22}, Lgnu/xml/XMLFilter;->writeCDATA([CII)V

    .line 789
    goto/16 :goto_1d

    .line 798
    :cond_55
    move/from16 v19, v5

    move/from16 v20, v14

    const/16 v21, 0x7

    add-int/lit8 v20, v20, 0x7

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_52

    move-object/from16 v19, v4

    move/from16 v20, v14

    aget-char v19, v19, v20

    const/16 v20, 0x44

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_52

    move-object/from16 v19, v4

    move/from16 v20, v14

    const/16 v21, 0x1

    add-int/lit8 v20, v20, 0x1

    aget-char v19, v19, v20

    const/16 v20, 0x4f

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_52

    move-object/from16 v19, v4

    move/from16 v20, v14

    const/16 v21, 0x2

    add-int/lit8 v20, v20, 0x2

    aget-char v19, v19, v20

    const/16 v20, 0x43

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_52

    move-object/from16 v19, v4

    move/from16 v20, v14

    const/16 v21, 0x3

    add-int/lit8 v20, v20, 0x3

    aget-char v19, v19, v20

    const/16 v20, 0x54

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_52

    move-object/from16 v19, v4

    move/from16 v20, v14

    const/16 v21, 0x4

    add-int/lit8 v20, v20, 0x4

    aget-char v19, v19, v20

    const/16 v20, 0x59

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_52

    move-object/from16 v19, v4

    move/from16 v20, v14

    const/16 v21, 0x5

    add-int/lit8 v20, v20, 0x5

    aget-char v19, v19, v20

    const/16 v20, 0x50

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_52

    move/from16 v19, v10

    const/16 v20, 0x45

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_52

    .line 807
    move/from16 v19, v6

    move/from16 v14, v19

    .line 808
    const/16 v19, 0xf

    move/from16 v7, v19

    .line 809
    goto/16 :goto_1

    .line 821
    :pswitch_12
    const/16 v19, 0x11

    move/from16 v7, v19

    .line 822
    move/from16 v19, v5

    const/16 v20, 0x1

    add-int/lit8 v19, v19, -0x1

    move/from16 v14, v19

    .line 823
    goto/16 :goto_0

    .line 826
    :pswitch_13
    move/from16 v19, v12

    if-gez v19, :cond_56

    .line 829
    move/from16 v19, v5

    const/16 v20, 0x1

    add-int/lit8 v19, v19, -0x1

    move/from16 v12, v19

    .line 830
    move/from16 v19, v12

    move/from16 v20, v14

    sub-int v19, v19, v20

    move/from16 v12, v19

    .line 831
    move/from16 v19, v12

    const/16 v20, 0x1

    shl-int/lit8 v19, v19, 0x1

    move/from16 v12, v19

    .line 832
    const/16 v19, 0x0

    move/from16 v8, v19

    .line 836
    :cond_56
    :goto_1e
    move/from16 v19, v10

    const/16 v20, 0x27

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_57

    move/from16 v19, v10

    const/16 v20, 0x22

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_5a

    .line 838
    :cond_57
    move/from16 v19, v8

    if-nez v19, :cond_59

    .line 839
    move/from16 v19, v10

    move/from16 v8, v19

    .line 864
    :cond_58
    :goto_1f
    move/from16 v19, v5

    move/from16 v20, v6

    move/from16 v0, v19

    move/from16 v1, v20

    if-ge v0, v1, :cond_1

    .line 865
    move-object/from16 v19, v4

    move/from16 v20, v5

    add-int/lit8 v5, v5, 0x1

    aget-char v19, v19, v20

    move/from16 v10, v19

    goto :goto_1e

    .line 840
    :cond_59
    move/from16 v19, v8

    move/from16 v20, v10

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_58

    .line 841
    const/16 v19, 0x0

    move/from16 v8, v19

    goto :goto_1f

    .line 843
    :cond_5a
    move/from16 v19, v8

    if-nez v19, :cond_58

    .line 846
    move/from16 v19, v10

    const/16 v20, 0x5b

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_5b

    .line 847
    move/from16 v19, v12

    const/16 v20, 0x1

    or-int/lit8 v19, v19, 0x1

    move/from16 v12, v19

    goto :goto_1f

    .line 848
    :cond_5b
    move/from16 v19, v10

    const/16 v20, 0x5d

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_5c

    .line 849
    move/from16 v19, v12

    const/16 v20, -0x2

    and-int/lit8 v19, v19, -0x2

    move/from16 v12, v19

    goto :goto_1f

    .line 850
    :cond_5c
    move/from16 v19, v10

    const/16 v20, 0x3e

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_58

    move/from16 v19, v12

    const/16 v20, 0x1

    and-int/lit8 v19, v19, 0x1

    if-nez v19, :cond_58

    .line 852
    move-object/from16 v19, v2

    move/from16 v20, v5

    move/from16 v0, v20

    move-object/from16 v1, v19

    iput v0, v1, Lgnu/text/LineBufferedReader;->pos:I

    .line 853
    move/from16 v19, v12

    const/16 v20, 0x1

    shr-int/lit8 v19, v19, 0x1

    move/from16 v12, v19

    .line 854
    move/from16 v19, v12

    move/from16 v20, v14

    add-int v19, v19, v20

    move/from16 v12, v19

    .line 855
    move-object/from16 v19, v3

    move-object/from16 v20, v4

    move/from16 v21, v14

    move/from16 v22, v11

    move/from16 v23, v12

    move/from16 v24, v5

    const/16 v25, 0x1

    add-int/lit8 v24, v24, -0x1

    move/from16 v25, v12

    sub-int v24, v24, v25

    invoke-virtual/range {v19 .. v24}, Lgnu/xml/XMLFilter;->emitDoctypeDecl([CIIII)V

    .line 857
    const/16 v19, 0x3c

    move/from16 v8, v19

    .line 858
    move/from16 v19, v6

    move/from16 v14, v19

    .line 859
    const/16 v19, -0x1

    move/from16 v12, v19

    .line 860
    const/16 v19, 0x1

    move/from16 v7, v19

    .line 861
    goto/16 :goto_1

    .line 871
    :pswitch_14
    const/16 v19, 0x3c

    move/from16 v8, v19

    .line 872
    const/16 v19, 0xe

    move/from16 v9, v19

    .line 873
    move/from16 v19, v10

    const/16 v20, 0x2f

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_5d

    .line 875
    move-object/from16 v19, v2

    move/from16 v20, v5

    move/from16 v0, v20

    move-object/from16 v1, v19

    iput v0, v1, Lgnu/text/LineBufferedReader;->pos:I

    .line 876
    move-object/from16 v19, v3

    invoke-virtual/range {v19 .. v19}, Lgnu/xml/XMLFilter;->emitEndAttributes()V

    .line 877
    move-object/from16 v19, v3

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    invoke-virtual/range {v19 .. v22}, Lgnu/xml/XMLFilter;->emitEndElement([CII)V

    .line 878
    const/16 v19, 0x1b

    move/from16 v7, v19

    .line 879
    goto/16 :goto_1

    .line 881
    :cond_5d
    move/from16 v19, v10

    const/16 v20, 0x3e

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_5e

    .line 883
    move-object/from16 v19, v2

    move/from16 v20, v5

    move/from16 v0, v20

    move-object/from16 v1, v19

    iput v0, v1, Lgnu/text/LineBufferedReader;->pos:I

    .line 884
    move-object/from16 v19, v3

    invoke-virtual/range {v19 .. v19}, Lgnu/xml/XMLFilter;->emitEndAttributes()V

    .line 885
    const/16 v19, 0x1

    move/from16 v7, v19

    .line 886
    goto/16 :goto_1

    .line 888
    :cond_5e
    move/from16 v19, v5

    const/16 v20, 0x1

    add-int/lit8 v19, v19, -0x1

    move/from16 v14, v19

    .line 889
    const/16 v19, 0x9

    move/from16 v7, v19

    .line 890
    goto/16 :goto_0

    .line 892
    :pswitch_15
    move/from16 v19, v10

    const/16 v20, 0x20

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_1

    move/from16 v19, v10

    const/16 v20, 0x9

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_1

    move/from16 v19, v10

    const/16 v20, 0xd

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_1

    move/from16 v19, v10

    const/16 v20, 0xa

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_1

    move/from16 v19, v10

    const/16 v20, 0x85

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_1

    move/from16 v19, v10

    const/16 v20, 0x2028

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_5f

    .line 894
    goto/16 :goto_1

    .line 895
    :cond_5f
    move-object/from16 v19, v2

    move/from16 v20, v5

    move/from16 v21, v11

    sub-int v20, v20, v21

    move/from16 v0, v20

    move-object/from16 v1, v19

    iput v0, v1, Lgnu/text/LineBufferedReader;->pos:I

    .line 896
    move-object/from16 v19, v3

    move-object/from16 v20, v4

    move/from16 v21, v14

    move/from16 v22, v11

    invoke-virtual/range {v19 .. v22}, Lgnu/xml/XMLFilter;->emitStartAttribute([CII)V

    .line 897
    move/from16 v19, v6

    move/from16 v14, v19

    .line 898
    move/from16 v19, v10

    const/16 v20, 0x3d

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_60

    .line 900
    const/16 v19, 0xb

    move/from16 v7, v19

    .line 901
    goto/16 :goto_1

    .line 903
    :cond_60
    move-object/from16 v19, v3

    invoke-virtual/range {v19 .. v19}, Lgnu/xml/XMLFilter;->emitEndAttributes()V

    .line 904
    const-string/jumbo v19, "missing or misplaced \'=\' after attribute name"

    move-object/from16 v13, v19

    .line 905
    const/16 v19, 0x24

    move/from16 v7, v19

    .line 906
    goto/16 :goto_0

    .line 908
    :pswitch_16
    move/from16 v19, v10

    const/16 v20, 0x27

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_61

    move/from16 v19, v10

    const/16 v20, 0x22

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_62

    .line 910
    :cond_61
    move/from16 v19, v10

    move/from16 v8, v19

    .line 911
    const/16 v19, 0xc

    move/from16 v9, v19

    .line 912
    const/16 v19, 0x1

    move/from16 v7, v19

    .line 913
    goto/16 :goto_1

    .line 915
    :cond_62
    move/from16 v19, v10

    const/16 v20, 0x20

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_1

    move/from16 v19, v10

    const/16 v20, 0x9

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_1

    move/from16 v19, v10

    const/16 v20, 0xd

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_1

    move/from16 v19, v10

    const/16 v20, 0xa

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_1

    move/from16 v19, v10

    const/16 v20, 0x85

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_1

    move/from16 v19, v10

    const/16 v20, 0x2028

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_63

    .line 917
    goto/16 :goto_1

    .line 918
    :cond_63
    const-string/jumbo v19, "missing or unquoted attribute value"

    move-object/from16 v13, v19

    .line 919
    const/16 v19, 0x24

    move/from16 v7, v19

    .line 920
    goto/16 :goto_0

    .line 924
    :pswitch_17
    move/from16 v19, v5

    const/16 v20, 0x1

    add-int/lit8 v19, v19, -0x1

    move/from16 v14, v19

    .line 925
    const/16 v19, 0x5

    move/from16 v7, v19

    .line 926
    goto/16 :goto_0

    .line 929
    :pswitch_18
    move-object/from16 v19, v2

    move/from16 v20, v5

    move/from16 v0, v20

    move-object/from16 v1, v19

    iput v0, v1, Lgnu/text/LineBufferedReader;->pos:I

    .line 930
    move-object/from16 v19, v3

    move-object/from16 v20, v4

    move/from16 v21, v14

    move/from16 v22, v11

    invoke-virtual/range {v19 .. v22}, Lgnu/xml/XMLFilter;->emitEndElement([CII)V

    .line 931
    move/from16 v19, v6

    move/from16 v14, v19

    .line 933
    const/16 v19, 0x1d

    move/from16 v7, v19

    .line 934
    goto/16 :goto_0

    .line 937
    :pswitch_19
    move/from16 v19, v10

    const/16 v20, 0x3e

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_64

    .line 939
    const-string/jumbo v19, "missing \'>\'"

    move-object/from16 v13, v19

    .line 940
    const/16 v19, 0x24

    move/from16 v7, v19

    .line 941
    goto/16 :goto_0

    .line 943
    :cond_64
    const/16 v19, 0x1

    move/from16 v7, v19

    .line 944
    goto/16 :goto_1

    .line 952
    :cond_65
    move/from16 v19, v5

    move/from16 v20, v14

    sub-int v19, v19, v20

    move/from16 v15, v19

    .line 955
    .local v15, "saved":I
    move/from16 v19, v15

    if-lez v19, :cond_66

    .line 957
    move-object/from16 v19, v2

    move/from16 v20, v14

    :try_start_0
    move/from16 v0, v20

    move-object/from16 v1, v19

    iput v0, v1, Lgnu/text/LineBufferedReader;->pos:I

    .line 958
    move-object/from16 v19, v2

    move/from16 v20, v15

    const/16 v21, 0x1

    add-int/lit8 v20, v20, 0x1

    invoke-virtual/range {v19 .. v20}, Lgnu/text/LineBufferedReader;->mark(I)V

    .line 960
    :cond_66
    move-object/from16 v19, v2

    move/from16 v20, v5

    move/from16 v0, v20

    move-object/from16 v1, v19

    iput v0, v1, Lgnu/text/LineBufferedReader;->pos:I

    .line 961
    move-object/from16 v19, v2

    invoke-virtual/range {v19 .. v19}, Lgnu/text/LineBufferedReader;->read()I

    move-result v19

    move/from16 v16, v19

    .line 962
    .local v16, "x":I
    move/from16 v19, v16

    if-gez v19, :cond_69

    .line 964
    move/from16 v19, v7

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_67

    move/from16 v19, v7

    const/16 v20, 0x1c

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_68

    .line 965
    :cond_67
    goto/16 :goto_2

    .line 966
    :cond_68
    const/16 v19, 0x25

    move/from16 v7, v19

    .line 967
    goto/16 :goto_0

    .line 969
    :cond_69
    move/from16 v19, v15

    if-lez v19, :cond_6a

    .line 971
    move-object/from16 v19, v2

    invoke-virtual/range {v19 .. v19}, Lgnu/text/LineBufferedReader;->reset()V

    .line 972
    move-object/from16 v19, v2

    move/from16 v20, v15

    invoke-virtual/range {v19 .. v20}, Lgnu/text/LineBufferedReader;->skip(I)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v19

    .line 980
    .line 981
    :goto_20
    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget v0, v0, Lgnu/text/LineBufferedReader;->pos:I

    move/from16 v19, v0

    move/from16 v5, v19

    .line 982
    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget-object v0, v0, Lgnu/text/LineBufferedReader;->buffer:[C

    move-object/from16 v19, v0

    move-object/from16 v4, v19

    .line 984
    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget v0, v0, Lgnu/text/LineBufferedReader;->limit:I

    move/from16 v19, v0

    move/from16 v6, v19

    .line 985
    move/from16 v19, v15

    if-lez v19, :cond_6b

    move/from16 v19, v5

    move/from16 v20, v15

    sub-int v19, v19, v20

    :goto_21
    move/from16 v14, v19

    .line 986
    move-object/from16 v19, v4

    move/from16 v20, v5

    add-int/lit8 v5, v5, 0x1

    aget-char v19, v19, v20

    move/from16 v10, v19

    .line 987
    goto/16 :goto_0

    .line 975
    :cond_6a
    move-object/from16 v19, v2

    :try_start_1
    invoke-virtual/range {v19 .. v19}, Lgnu/text/LineBufferedReader;->unread_quick()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_20

    .line 977
    .end local v16    # "x":I
    :catch_0
    move-exception v19

    move-object/from16 v16, v19

    .line 979
    .local v16, "ex":Ljava/io/IOException;
    new-instance v19, Ljava/lang/RuntimeException;

    move-object/from16 v26, v19

    move-object/from16 v19, v26

    move-object/from16 v20, v26

    move-object/from16 v21, v16

    invoke-virtual/range {v21 .. v21}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v21

    invoke-direct/range {v20 .. v21}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v19

    .line 985
    .local v16, "x":I
    :cond_6b
    move/from16 v19, v6

    goto :goto_21

    .line 206
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_7
        :pswitch_f
        :pswitch_a
        :pswitch_18
        :pswitch_a
        :pswitch_d
        :pswitch_a
        :pswitch_15
        :pswitch_a
        :pswitch_14
        :pswitch_16
        :pswitch_9
        :pswitch_12
        :pswitch_e
        :pswitch_9
        :pswitch_13
        :pswitch_a
        :pswitch_0
        :pswitch_17
        :pswitch_11
        :pswitch_10
        :pswitch_0
        :pswitch_9
        :pswitch_a
        :pswitch_c
        :pswitch_b
        :pswitch_19
        :pswitch_8
        :pswitch_9
        :pswitch_10
        :pswitch_2
        :pswitch_9
        :pswitch_a
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public static parse(Ljava/io/InputStream;Ljava/lang/Object;Lgnu/text/SourceMessages;Lgnu/lists/Consumer;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 133
    move-object v0, p0

    .local v0, "strm":Ljava/io/InputStream;
    move-object v1, p1

    .local v1, "uri":Ljava/lang/Object;
    move-object v2, p2

    .local v2, "messages":Lgnu/text/SourceMessages;
    move-object v3, p3

    .local v3, "out":Lgnu/lists/Consumer;
    move-object v5, v0

    invoke-static {v5}, Lgnu/xml/XMLParser;->XMLStreamReader(Ljava/io/InputStream;)Lgnu/text/LineInputStreamReader;

    move-result-object v5

    move-object v4, v5

    .line 134
    .local v4, "in":Lgnu/text/LineInputStreamReader;
    move-object v5, v1

    if-eqz v5, :cond_0

    .line 135
    move-object v5, v4

    move-object v6, v1

    invoke-virtual {v5, v6}, Lgnu/text/LineInputStreamReader;->setName(Ljava/lang/Object;)V

    .line 136
    :cond_0
    move-object v5, v4

    move-object v6, v2

    move-object v7, v3

    invoke-static {v5, v6, v7}, Lgnu/xml/XMLParser;->parse(Lgnu/text/LineBufferedReader;Lgnu/text/SourceMessages;Lgnu/lists/Consumer;)V

    .line 137
    move-object v5, v4

    invoke-virtual {v5}, Lgnu/text/LineInputStreamReader;->close()V

    .line 138
    return-void
.end method

.method public static parse(Ljava/lang/Object;Lgnu/text/SourceMessages;Lgnu/lists/Consumer;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 58
    move-object v0, p0

    .local v0, "uri":Ljava/lang/Object;
    move-object v1, p1

    .local v1, "messages":Lgnu/text/SourceMessages;
    move-object v2, p2

    .local v2, "out":Lgnu/lists/Consumer;
    move-object v3, v0

    invoke-static {v3}, Lgnu/text/Path;->openInputStream(Ljava/lang/Object;)Ljava/io/InputStream;

    move-result-object v3

    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    invoke-static {v3, v4, v5, v6}, Lgnu/xml/XMLParser;->parse(Ljava/io/InputStream;Ljava/lang/Object;Lgnu/text/SourceMessages;Lgnu/lists/Consumer;)V

    .line 59
    return-void
.end method

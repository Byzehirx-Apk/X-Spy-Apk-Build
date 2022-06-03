.class public Lorg/jose4j/http/Get;
.super Ljava/lang/Object;
.source "Get.java"

# interfaces
.implements Lorg/jose4j/http/SimpleGet;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jose4j/http/Get$ResponseBodyTooLargeException;
    }
.end annotation


# static fields
.field private static final MAX_RETRY_WAIT:J = 0x1f40L

.field private static final log:Lorg/slf4j/Logger;


# instance fields
.field private connectTimeout:I

.field private hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

.field private initialRetryWaitTime:J

.field private progressiveRetryWait:Z

.field private proxy:Ljava/net/Proxy;

.field private readTimeout:I

.field private responseBodySizeLimit:I

.field private retries:I

.field private sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 51
    const-class v0, Lorg/jose4j/http/Get;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lorg/jose4j/http/Get;->log:Lorg/slf4j/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    .line 47
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/http/Get;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 53
    move-object v1, v0

    const/16 v2, 0x4e20

    iput v2, v1, Lorg/jose4j/http/Get;->connectTimeout:I

    .line 54
    move-object v1, v0

    const/16 v2, 0x4e20

    iput v2, v1, Lorg/jose4j/http/Get;->readTimeout:I

    .line 55
    move-object v1, v0

    const/4 v2, 0x3

    iput v2, v1, Lorg/jose4j/http/Get;->retries:I

    .line 56
    move-object v1, v0

    const-wide/16 v2, 0xb4

    iput-wide v2, v1, Lorg/jose4j/http/Get;->initialRetryWaitTime:J

    .line 57
    move-object v1, v0

    const/4 v2, 0x1

    iput-boolean v2, v1, Lorg/jose4j/http/Get;->progressiveRetryWait:Z

    .line 60
    move-object v1, v0

    const/high16 v2, 0x80000

    iput v2, v1, Lorg/jose4j/http/Get;->responseBodySizeLimit:I

    .line 345
    return-void
.end method

.method private getBody(Ljava/net/URLConnection;Ljava/lang/String;)Ljava/lang/String;
    .locals 22
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 117
    move-object/from16 v2, p0

    .local v2, "this":Lorg/jose4j/http/Get;
    move-object/from16 v3, p1

    .local v3, "urlConnection":Ljava/net/URLConnection;
    move-object/from16 v4, p2

    .local v4, "charset":Ljava/lang/String;
    new-instance v17, Ljava/io/StringWriter;

    move-object/from16 v21, v17

    move-object/from16 v17, v21

    move-object/from16 v18, v21

    invoke-direct/range {v18 .. v18}, Ljava/io/StringWriter;-><init>()V

    move-object/from16 v5, v17

    .line 118
    .local v5, "writer":Ljava/io/StringWriter;
    move-object/from16 v17, v3

    invoke-virtual/range {v17 .. v17}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v17

    move-object/from16 v6, v17

    .local v6, "is":Ljava/io/InputStream;
    const/16 v17, 0x0

    move-object/from16 v7, v17

    .line 119
    :try_start_0
    new-instance v17, Ljava/io/InputStreamReader;

    move-object/from16 v21, v17

    move-object/from16 v17, v21

    move-object/from16 v18, v21

    move-object/from16 v19, v6

    move-object/from16 v20, v4

    invoke-direct/range {v18 .. v20}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object/from16 v8, v17

    .line 118
    .local v8, "isr":Ljava/io/InputStreamReader;
    const/16 v17, 0x0

    move-object/from16 v9, v17

    .line 121
    const/16 v17, 0x0

    move/from16 v10, v17

    .line 122
    .local v10, "charactersRead":I
    const/16 v17, 0x400

    :try_start_1
    move/from16 v0, v17

    new-array v0, v0, [C

    move-object/from16 v17, v0

    move-object/from16 v11, v17

    .line 124
    .local v11, "buffer":[C
    :cond_0
    const/16 v17, -0x1

    move-object/from16 v18, v8

    move-object/from16 v19, v11

    invoke-virtual/range {v18 .. v19}, Ljava/io/InputStreamReader;->read([C)I

    move-result v18

    move/from16 v21, v18

    move/from16 v18, v21

    move/from16 v19, v21

    move/from16 v12, v19

    .local v12, "n":I
    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_3

    .line 126
    move-object/from16 v17, v5

    move-object/from16 v18, v11

    const/16 v19, 0x0

    move/from16 v20, v12

    invoke-virtual/range {v17 .. v20}, Ljava/io/StringWriter;->write([CII)V

    .line 127
    move/from16 v17, v10

    move/from16 v18, v12

    add-int v17, v17, v18

    move/from16 v10, v17

    .line 128
    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget v0, v0, Lorg/jose4j/http/Get;->responseBodySizeLimit:I

    move/from16 v17, v0

    if-lez v17, :cond_0

    move/from16 v17, v10

    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget v0, v0, Lorg/jose4j/http/Get;->responseBodySizeLimit:I

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    if-le v0, v1, :cond_0

    .line 130
    new-instance v17, Lorg/jose4j/http/Get$ResponseBodyTooLargeException;

    move-object/from16 v21, v17

    move-object/from16 v17, v21

    move-object/from16 v18, v21

    new-instance v19, Ljava/lang/StringBuilder;

    move-object/from16 v21, v19

    move-object/from16 v19, v21

    move-object/from16 v20, v21

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "More than "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget v0, v0, Lorg/jose4j/http/Get;->responseBodySizeLimit:I

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string/jumbo v20, " characters have been read from the response body."

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-direct/range {v18 .. v19}, Lorg/jose4j/http/Get$ResponseBodyTooLargeException;-><init>(Ljava/lang/String;)V

    throw v17
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 118
    .end local v11    # "buffer":[C
    .end local v12    # "n":I
    :catch_0
    move-exception v17

    move-object/from16 v10, v17

    move-object/from16 v17, v10

    move-object/from16 v9, v17

    move-object/from16 v17, v10

    :try_start_2
    throw v17
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 134
    .end local v10    # "charactersRead":I
    :catchall_0
    move-exception v17

    move-object/from16 v13, v17

    move-object/from16 v17, v8

    if-eqz v17, :cond_1

    move-object/from16 v17, v9

    if-eqz v17, :cond_7

    move-object/from16 v17, v8

    :try_start_3
    invoke-virtual/range {v17 .. v17}, Ljava/io/InputStreamReader;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :cond_1
    :goto_0
    move-object/from16 v17, v13

    :try_start_4
    throw v17
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 118
    .end local v8    # "isr":Ljava/io/InputStreamReader;
    :catch_1
    move-exception v17

    move-object/from16 v8, v17

    move-object/from16 v17, v8

    move-object/from16 v7, v17

    move-object/from16 v17, v8

    :try_start_5
    throw v17
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 134
    :catchall_1
    move-exception v17

    move-object/from16 v15, v17

    move-object/from16 v17, v6

    if-eqz v17, :cond_2

    move-object/from16 v17, v7

    if-eqz v17, :cond_9

    move-object/from16 v17, v6

    :try_start_6
    invoke-virtual/range {v17 .. v17}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_5

    :cond_2
    :goto_1
    move-object/from16 v17, v15

    throw v17

    .line 133
    .restart local v8    # "isr":Ljava/io/InputStreamReader;
    .restart local v10    # "charactersRead":I
    .restart local v11    # "buffer":[C
    .restart local v12    # "n":I
    :cond_3
    :try_start_7
    sget-object v17, Lorg/jose4j/http/Get;->log:Lorg/slf4j/Logger;

    const-string/jumbo v18, "read {} characters"

    move/from16 v19, v10

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    invoke-interface/range {v17 .. v19}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 134
    move-object/from16 v17, v8

    if-eqz v17, :cond_4

    move-object/from16 v17, v9

    if-eqz v17, :cond_6

    move-object/from16 v17, v8

    :try_start_8
    invoke-virtual/range {v17 .. v17}, Ljava/io/InputStreamReader;->close()V
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_2
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .end local v10    # "charactersRead":I
    :cond_4
    :goto_2
    move-object/from16 v17, v6

    if-eqz v17, :cond_5

    move-object/from16 v17, v7

    if-eqz v17, :cond_8

    move-object/from16 v17, v6

    :try_start_9
    invoke-virtual/range {v17 .. v17}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_4

    .line 135
    .end local v8    # "isr":Ljava/io/InputStreamReader;
    :cond_5
    :goto_3
    move-object/from16 v17, v5

    invoke-virtual/range {v17 .. v17}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v2, v17

    .end local v2    # "this":Lorg/jose4j/http/Get;
    return-object v2

    .line 134
    .restart local v2    # "this":Lorg/jose4j/http/Get;
    .restart local v8    # "isr":Ljava/io/InputStreamReader;
    .restart local v10    # "charactersRead":I
    :catch_2
    move-exception v17

    move-object/from16 v10, v17

    .local v10, "x2":Ljava/lang/Throwable;
    move-object/from16 v17, v9

    move-object/from16 v18, v10

    :try_start_a
    invoke-virtual/range {v17 .. v18}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_2

    .local v10, "charactersRead":I
    :cond_6
    move-object/from16 v17, v8

    invoke-virtual/range {v17 .. v17}, Ljava/io/InputStreamReader;->close()V

    goto :goto_2

    .end local v10    # "charactersRead":I
    .end local v11    # "buffer":[C
    .end local v12    # "n":I
    :catch_3
    move-exception v17

    move-object/from16 v14, v17

    .local v14, "x2":Ljava/lang/Throwable;
    move-object/from16 v17, v9

    move-object/from16 v18, v14

    invoke-virtual/range {v17 .. v18}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_0

    .end local v14    # "x2":Ljava/lang/Throwable;
    :cond_7
    move-object/from16 v17, v8

    invoke-virtual/range {v17 .. v17}, Ljava/io/InputStreamReader;->close()V
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_1
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    goto :goto_0

    .restart local v11    # "buffer":[C
    .restart local v12    # "n":I
    :catch_4
    move-exception v17

    move-object/from16 v8, v17

    .local v8, "x2":Ljava/lang/Throwable;
    move-object/from16 v17, v7

    move-object/from16 v18, v8

    invoke-virtual/range {v17 .. v18}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_3

    .local v8, "isr":Ljava/io/InputStreamReader;
    :cond_8
    move-object/from16 v17, v6

    invoke-virtual/range {v17 .. v17}, Ljava/io/InputStream;->close()V

    goto :goto_3

    .end local v8    # "isr":Ljava/io/InputStreamReader;
    .end local v11    # "buffer":[C
    .end local v12    # "n":I
    :catch_5
    move-exception v17

    move-object/from16 v16, v17

    .local v16, "x2":Ljava/lang/Throwable;
    move-object/from16 v17, v7

    move-object/from16 v18, v16

    invoke-virtual/range {v17 .. v18}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_1

    .end local v16    # "x2":Ljava/lang/Throwable;
    :cond_9
    move-object/from16 v17, v6

    invoke-virtual/range {v17 .. v17}, Ljava/io/InputStream;->close()V

    goto :goto_1
.end method

.method private getCharset(Ljava/net/URLConnection;)Ljava/lang/String;
    .locals 13

    .prologue
    .line 157
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/http/Get;
    move-object v1, p1

    .local v1, "urlConnection":Ljava/net/URLConnection;
    move-object v9, v1

    const-string/jumbo v10, "Content-Type"

    invoke-virtual {v9, v10}, Ljava/net/URLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    move-object v2, v9

    .line 158
    .local v2, "contentType":Ljava/lang/String;
    const-string/jumbo v9, "UTF-8"

    move-object v3, v9

    .line 161
    .local v3, "charset":Ljava/lang/String;
    move-object v9, v2

    if-eqz v9, :cond_1

    .line 163
    move-object v9, v2

    :try_start_0
    const-string/jumbo v10, " "

    const-string/jumbo v11, ""

    invoke-virtual {v9, v10, v11}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v9

    const-string/jumbo v10, ";"

    invoke-virtual {v9, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    move-object v4, v9

    .local v4, "arr$":[Ljava/lang/String;
    move-object v9, v4

    array-length v9, v9

    move v5, v9

    .local v5, "len$":I
    const/4 v9, 0x0

    move v6, v9

    .local v6, "i$":I
    :goto_0
    move v9, v6

    move v10, v5

    if-ge v9, v10, :cond_0

    move-object v9, v4

    move v10, v6

    aget-object v9, v9, v10

    move-object v7, v9

    .line 164
    .local v7, "part":Ljava/lang/String;
    const-string/jumbo v9, "charset="

    move-object v8, v9

    .line 165
    .local v8, "prefix":Ljava/lang/String;
    move-object v9, v7

    move-object v10, v8

    invoke-virtual {v9, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 166
    move-object v9, v7

    move-object v10, v8

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    move-object v3, v9

    .line 170
    .end local v7    # "part":Ljava/lang/String;
    .end local v8    # "prefix":Ljava/lang/String;
    :cond_0
    move-object v9, v3

    invoke-static {v9}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v9

    .line 177
    .line 178
    .end local v4    # "arr$":[Ljava/lang/String;
    .end local v5    # "len$":I
    .end local v6    # "i$":I
    :cond_1
    :goto_1
    move-object v9, v3

    move-object v0, v9

    .end local v0    # "this":Lorg/jose4j/http/Get;
    return-object v0

    .line 163
    .restart local v0    # "this":Lorg/jose4j/http/Get;
    .restart local v4    # "arr$":[Ljava/lang/String;
    .restart local v5    # "len$":I
    .restart local v6    # "i$":I
    .restart local v7    # "part":Ljava/lang/String;
    .restart local v8    # "prefix":Ljava/lang/String;
    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 173
    .end local v4    # "arr$":[Ljava/lang/String;
    .end local v5    # "len$":I
    .end local v6    # "i$":I
    .end local v7    # "part":Ljava/lang/String;
    .end local v8    # "prefix":Ljava/lang/String;
    :catch_0
    move-exception v9

    move-object v4, v9

    .line 175
    .local v4, "e":Ljava/lang/Exception;
    sget-object v9, Lorg/jose4j/http/Get;->log:Lorg/slf4j/Logger;

    const-string/jumbo v10, "Unexpected problem attempted to determine the charset from the Content-Type ({}) so will default to using UTF8: {}"

    move-object v11, v2

    move-object v12, v4

    invoke-interface {v9, v10, v11, v12}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 176
    const-string/jumbo v9, "UTF-8"

    move-object v3, v9

    goto :goto_1
.end method

.method private getRetryWaitTime(I)J
    .locals 10

    .prologue
    .line 183
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/http/Get;
    move v1, p1

    .local v1, "attempt":I
    move-object v6, v0

    iget-boolean v6, v6, Lorg/jose4j/http/Get;->progressiveRetryWait:Z

    if-eqz v6, :cond_0

    .line 185
    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    move v8, v1

    const/4 v9, 0x1

    add-int/lit8 v8, v8, -0x1

    int-to-double v8, v8

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    move-wide v2, v6

    .line 186
    .local v2, "pow":D
    move-wide v6, v2

    move-object v8, v0

    iget-wide v8, v8, Lorg/jose4j/http/Get;->initialRetryWaitTime:J

    long-to-double v8, v8

    mul-double/2addr v6, v8

    double-to-long v6, v6

    move-wide v4, v6

    .line 187
    .local v4, "wait":J
    move-wide v6, v4

    const-wide/16 v8, 0x1f40

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v6

    move-wide v0, v6

    .line 191
    .end local v0    # "this":Lorg/jose4j/http/Get;
    .end local v2    # "pow":D
    .end local v4    # "wait":J
    :goto_0
    return-wide v0

    .restart local v0    # "this":Lorg/jose4j/http/Get;
    :cond_0
    move-object v6, v0

    iget-wide v6, v6, Lorg/jose4j/http/Get;->initialRetryWaitTime:J

    move-wide v0, v6

    goto :goto_0
.end method

.method private setUpTls(Ljava/net/URLConnection;)V
    .locals 5

    .prologue
    .line 140
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/http/Get;
    move-object v1, p1

    .local v1, "urlConnection":Ljava/net/URLConnection;
    move-object v3, v1

    instance-of v3, v3, Ljavax/net/ssl/HttpsURLConnection;

    if-eqz v3, :cond_1

    .line 142
    move-object v3, v1

    check-cast v3, Ljavax/net/ssl/HttpsURLConnection;

    move-object v2, v3

    .line 143
    .local v2, "httpsUrlConnection":Ljavax/net/ssl/HttpsURLConnection;
    move-object v3, v0

    iget-object v3, v3, Lorg/jose4j/http/Get;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    if-eqz v3, :cond_0

    .line 145
    move-object v3, v2

    move-object v4, v0

    iget-object v4, v4, Lorg/jose4j/http/Get;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    invoke-virtual {v3, v4}, Ljavax/net/ssl/HttpsURLConnection;->setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V

    .line 148
    :cond_0
    move-object v3, v0

    iget-object v3, v3, Lorg/jose4j/http/Get;->hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

    if-eqz v3, :cond_1

    .line 150
    move-object v3, v2

    move-object v4, v0

    iget-object v4, v4, Lorg/jose4j/http/Get;->hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

    invoke-virtual {v3, v4}, Ljavax/net/ssl/HttpsURLConnection;->setHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)V

    .line 153
    .end local v2    # "httpsUrlConnection":Ljavax/net/ssl/HttpsURLConnection;
    :cond_1
    return-void
.end method


# virtual methods
.method public get(Ljava/lang/String;)Lorg/jose4j/http/SimpleResponse;
    .locals 21
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 66
    move-object/from16 v1, p0

    .local v1, "this":Lorg/jose4j/http/Get;
    move-object/from16 v2, p1

    .local v2, "location":Ljava/lang/String;
    const/4 v13, 0x0

    move v3, v13

    .line 67
    .local v3, "attempts":I
    sget-object v13, Lorg/jose4j/http/Get;->log:Lorg/slf4j/Logger;

    const-string/jumbo v14, "HTTP GET of {}"

    move-object v15, v2

    invoke-interface {v13, v14, v15}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    .line 68
    new-instance v13, Ljava/net/URL;

    move-object/from16 v20, v13

    move-object/from16 v13, v20

    move-object/from16 v14, v20

    move-object v15, v2

    invoke-direct {v14, v15}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    move-object v4, v13

    .line 73
    .local v4, "url":Ljava/net/URL;
    :goto_0
    move-object v13, v1

    :try_start_0
    iget-object v13, v13, Lorg/jose4j/http/Get;->proxy:Ljava/net/Proxy;

    if-nez v13, :cond_0

    move-object v13, v4

    invoke-virtual {v13}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v13

    :goto_1
    move-object v5, v13

    .line 74
    .local v5, "urlConnection":Ljava/net/URLConnection;
    move-object v13, v5

    move-object v14, v1

    iget v14, v14, Lorg/jose4j/http/Get;->connectTimeout:I

    invoke-virtual {v13, v14}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    .line 75
    move-object v13, v5

    move-object v14, v1

    iget v14, v14, Lorg/jose4j/http/Get;->readTimeout:I

    invoke-virtual {v13, v14}, Ljava/net/URLConnection;->setReadTimeout(I)V

    .line 77
    move-object v13, v1

    move-object v14, v5

    invoke-direct {v13, v14}, Lorg/jose4j/http/Get;->setUpTls(Ljava/net/URLConnection;)V

    .line 79
    move-object v13, v5

    check-cast v13, Ljava/net/HttpURLConnection;

    move-object v6, v13

    .line 80
    .local v6, "httpUrlConnection":Ljava/net/HttpURLConnection;
    move-object v13, v6

    invoke-virtual {v13}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v13

    move v7, v13

    .line 81
    .local v7, "code":I
    move-object v13, v6

    invoke-virtual {v13}, Ljava/net/HttpURLConnection;->getResponseMessage()Ljava/lang/String;

    move-result-object v13

    move-object v8, v13

    .line 83
    .local v8, "msg":Ljava/lang/String;
    move v13, v7

    const/16 v14, 0xc8

    if-eq v13, v14, :cond_1

    .line 85
    new-instance v13, Ljava/io/IOException;

    move-object/from16 v20, v13

    move-object/from16 v13, v20

    move-object/from16 v14, v20

    new-instance v15, Ljava/lang/StringBuilder;

    move-object/from16 v20, v15

    move-object/from16 v15, v20

    move-object/from16 v16, v20

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "Non 200 status code ("

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move/from16 v16, v7

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, " "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v16, v8

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, ") returned from "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v16, v4

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v13
    :try_end_0
    .catch Ljavax/net/ssl/SSLHandshakeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/net/ssl/SSLPeerUnverifiedException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Lorg/jose4j/http/Get$ResponseBodyTooLargeException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 97
    .end local v5    # "urlConnection":Ljava/net/URLConnection;
    .end local v6    # "httpUrlConnection":Ljava/net/HttpURLConnection;
    .end local v7    # "code":I
    .end local v8    # "msg":Ljava/lang/String;
    :catch_0
    move-exception v13

    :goto_2
    move-object v5, v13

    .line 99
    .local v5, "e":Ljava/io/IOException;
    move-object v13, v5

    throw v13

    .line 73
    .end local v5    # "e":Ljava/io/IOException;
    :cond_0
    move-object v13, v4

    move-object v14, v1

    :try_start_1
    iget-object v14, v14, Lorg/jose4j/http/Get;->proxy:Ljava/net/Proxy;

    invoke-virtual {v13, v14}, Ljava/net/URL;->openConnection(Ljava/net/Proxy;)Ljava/net/URLConnection;

    move-result-object v13

    goto :goto_1

    .line 88
    .local v5, "urlConnection":Ljava/net/URLConnection;
    .restart local v6    # "httpUrlConnection":Ljava/net/HttpURLConnection;
    .restart local v7    # "code":I
    .restart local v8    # "msg":Ljava/lang/String;
    :cond_1
    move-object v13, v1

    move-object v14, v5

    invoke-direct {v13, v14}, Lorg/jose4j/http/Get;->getCharset(Ljava/net/URLConnection;)Ljava/lang/String;

    move-result-object v13

    move-object v9, v13

    .line 90
    .local v9, "charset":Ljava/lang/String;
    move-object v13, v1

    move-object v14, v5

    move-object v15, v9

    invoke-direct {v13, v14, v15}, Lorg/jose4j/http/Get;->getBody(Ljava/net/URLConnection;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    move-object v10, v13

    .line 92
    .local v10, "body":Ljava/lang/String;
    move-object v13, v6

    invoke-virtual {v13}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v13

    move-object v11, v13

    .line 93
    .local v11, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    new-instance v13, Lorg/jose4j/http/Response;

    move-object/from16 v20, v13

    move-object/from16 v13, v20

    move-object/from16 v14, v20

    move v15, v7

    move-object/from16 v16, v8

    move-object/from16 v17, v11

    move-object/from16 v18, v10

    invoke-direct/range {v14 .. v18}, Lorg/jose4j/http/Response;-><init>(ILjava/lang/String;Ljava/util/Map;Ljava/lang/String;)V

    move-object v12, v13

    .line 94
    .local v12, "simpleResponse":Lorg/jose4j/http/SimpleResponse;
    sget-object v13, Lorg/jose4j/http/Get;->log:Lorg/slf4j/Logger;

    const-string/jumbo v14, "HTTP GET of {} returned {}"

    move-object v15, v4

    move-object/from16 v16, v12

    invoke-interface/range {v13 .. v16}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljavax/net/ssl/SSLHandshakeException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljavax/net/ssl/SSLPeerUnverifiedException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Lorg/jose4j/http/Get$ResponseBodyTooLargeException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 95
    move-object v13, v12

    move-object v1, v13

    .end local v1    # "this":Lorg/jose4j/http/Get;
    return-object v1

    .line 101
    .end local v5    # "urlConnection":Ljava/net/URLConnection;
    .end local v6    # "httpUrlConnection":Ljava/net/HttpURLConnection;
    .end local v7    # "code":I
    .end local v8    # "msg":Ljava/lang/String;
    .end local v9    # "charset":Ljava/lang/String;
    .end local v10    # "body":Ljava/lang/String;
    .end local v11    # "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    .end local v12    # "simpleResponse":Lorg/jose4j/http/SimpleResponse;
    .restart local v1    # "this":Lorg/jose4j/http/Get;
    :catch_1
    move-exception v13

    move-object v5, v13

    .line 103
    .local v5, "e":Ljava/io/IOException;
    add-int/lit8 v3, v3, 0x1

    .line 104
    move v13, v3

    move-object v14, v1

    iget v14, v14, Lorg/jose4j/http/Get;->retries:I

    if-le v13, v14, :cond_2

    .line 106
    move-object v13, v5

    throw v13

    .line 108
    :cond_2
    move-object v13, v1

    move v14, v3

    invoke-direct {v13, v14}, Lorg/jose4j/http/Get;->getRetryWaitTime(I)J

    move-result-wide v13

    move-wide v6, v13

    .line 109
    .local v6, "retryWaitTime":J
    sget-object v13, Lorg/jose4j/http/Get;->log:Lorg/slf4j/Logger;

    const-string/jumbo v14, "Waiting {}ms before retrying ({} of {}) HTTP GET of {} after failed attempt: {}"

    const/4 v15, 0x5

    new-array v15, v15, [Ljava/lang/Object;

    move-object/from16 v20, v15

    move-object/from16 v15, v20

    move-object/from16 v16, v20

    const/16 v17, 0x0

    move-wide/from16 v18, v6

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v18

    aput-object v18, v16, v17

    move-object/from16 v20, v15

    move-object/from16 v15, v20

    move-object/from16 v16, v20

    const/16 v17, 0x1

    move/from16 v18, v3

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    aput-object v18, v16, v17

    move-object/from16 v20, v15

    move-object/from16 v15, v20

    move-object/from16 v16, v20

    const/16 v17, 0x2

    move-object/from16 v18, v1

    move-object/from16 v0, v18

    iget v0, v0, Lorg/jose4j/http/Get;->retries:I

    move/from16 v18, v0

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    aput-object v18, v16, v17

    move-object/from16 v20, v15

    move-object/from16 v15, v20

    move-object/from16 v16, v20

    const/16 v17, 0x3

    move-object/from16 v18, v4

    aput-object v18, v16, v17

    move-object/from16 v20, v15

    move-object/from16 v15, v20

    move-object/from16 v16, v20

    const/16 v17, 0x4

    move-object/from16 v18, v5

    aput-object v18, v16, v17

    invoke-interface {v13, v14, v15}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 110
    move-wide v13, v6

    :try_start_2
    invoke-static {v13, v14}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_2

    .line 111
    :goto_3
    goto/16 :goto_0

    .line 110
    :catch_2
    move-exception v13

    move-object v8, v13

    goto :goto_3

    .line 97
    .end local v5    # "e":Ljava/io/IOException;
    .end local v6    # "retryWaitTime":J
    :catch_3
    move-exception v13

    goto/16 :goto_2

    :catch_4
    move-exception v13

    goto/16 :goto_2

    :catch_5
    move-exception v13

    goto/16 :goto_2
.end method

.method public setConnectTimeout(I)V
    .locals 4

    .prologue
    .line 204
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/http/Get;
    move v1, p1

    .local v1, "connectTimeout":I
    move-object v2, v0

    move v3, v1

    iput v3, v2, Lorg/jose4j/http/Get;->connectTimeout:I

    .line 205
    return-void
.end method

.method public setHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)V
    .locals 4

    .prologue
    .line 225
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/http/Get;
    move-object v1, p1

    .local v1, "hostnameVerifier":Ljavax/net/ssl/HostnameVerifier;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lorg/jose4j/http/Get;->hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

    .line 226
    return-void
.end method

.method public setHttpProxy(Ljava/net/Proxy;)V
    .locals 4

    .prologue
    .line 341
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/http/Get;
    move-object v1, p1

    .local v1, "proxy":Ljava/net/Proxy;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lorg/jose4j/http/Get;->proxy:Ljava/net/Proxy;

    .line 342
    return-void
.end method

.method public setInitialRetryWaitTime(J)V
    .locals 7

    .prologue
    .line 262
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/http/Get;
    move-wide v1, p1

    .local v1, "initialRetryWaitTime":J
    move-object v3, v0

    move-wide v4, v1

    iput-wide v4, v3, Lorg/jose4j/http/Get;->initialRetryWaitTime:J

    .line 263
    return-void
.end method

.method public setProgressiveRetryWait(Z)V
    .locals 4

    .prologue
    .line 253
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/http/Get;
    move v1, p1

    .local v1, "progressiveRetryWait":Z
    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Lorg/jose4j/http/Get;->progressiveRetryWait:Z

    .line 254
    return-void
.end method

.method public setReadTimeout(I)V
    .locals 4

    .prologue
    .line 215
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/http/Get;
    move v1, p1

    .local v1, "readTimeout":I
    move-object v2, v0

    move v3, v1

    iput v3, v2, Lorg/jose4j/http/Get;->readTimeout:I

    .line 216
    return-void
.end method

.method public setResponseBodySizeLimit(I)V
    .locals 4

    .prologue
    .line 271
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/http/Get;
    move v1, p1

    .local v1, "responseBodySizeLimit":I
    move-object v2, v0

    move v3, v1

    iput v3, v2, Lorg/jose4j/http/Get;->responseBodySizeLimit:I

    .line 272
    return-void
.end method

.method public setRetries(I)V
    .locals 4

    .prologue
    .line 244
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/http/Get;
    move v1, p1

    .local v1, "retries":I
    move-object v2, v0

    move v3, v1

    iput v3, v2, Lorg/jose4j/http/Get;->retries:I

    .line 245
    return-void
.end method

.method public setSslSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V
    .locals 4

    .prologue
    .line 331
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/http/Get;
    move-object v1, p1

    .local v1, "sslSocketFactory":Ljavax/net/ssl/SSLSocketFactory;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lorg/jose4j/http/Get;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    .line 332
    return-void
.end method

.method public setTrustedCertificates(Ljava/util/Collection;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/security/cert/X509Certificate;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 294
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/http/Get;
    move-object v1, p1

    .local v1, "certificates":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/security/cert/X509Certificate;>;"
    :try_start_0
    const-string/jumbo v7, "PKIX"

    invoke-static {v7}, Ljavax/net/ssl/TrustManagerFactory;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/TrustManagerFactory;

    move-result-object v7

    move-object v2, v7

    .line 295
    .local v2, "trustMgrFactory":Ljavax/net/ssl/TrustManagerFactory;
    const-string/jumbo v7, "jks"

    invoke-static {v7}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v7

    move-object v3, v7

    .line 296
    .local v3, "keyStore":Ljava/security/KeyStore;
    move-object v7, v3

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V

    .line 297
    const/4 v7, 0x0

    move v4, v7

    .line 298
    .local v4, "i":I
    move-object v7, v1

    invoke-interface {v7}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v7

    move-object v5, v7

    .local v5, "i$":Ljava/util/Iterator;
    :goto_0
    move-object v7, v5

    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    move-object v7, v5

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/security/cert/X509Certificate;

    move-object v6, v7

    .line 300
    .local v6, "certificate":Ljava/security/cert/X509Certificate;
    move-object v7, v3

    new-instance v8, Ljava/lang/StringBuilder;

    move-object v11, v8

    move-object v8, v11

    move-object v9, v11

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "alias"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move v9, v4

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    move-object v9, v6

    invoke-virtual {v7, v8, v9}, Ljava/security/KeyStore;->setCertificateEntry(Ljava/lang/String;Ljava/security/cert/Certificate;)V

    .line 301
    goto :goto_0

    .line 302
    .end local v6    # "certificate":Ljava/security/cert/X509Certificate;
    :cond_0
    move-object v7, v2

    move-object v8, v3

    invoke-virtual {v7, v8}, Ljavax/net/ssl/TrustManagerFactory;->init(Ljava/security/KeyStore;)V

    .line 303
    move-object v7, v2

    invoke-virtual {v7}, Ljavax/net/ssl/TrustManagerFactory;->getTrustManagers()[Ljavax/net/ssl/TrustManager;

    move-result-object v7

    move-object v5, v7

    .line 304
    .local v5, "customTrustManagers":[Ljavax/net/ssl/TrustManager;
    const-string/jumbo v7, "TLS"

    invoke-static {v7}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v7

    move-object v6, v7

    .line 305
    .local v6, "sslContext":Ljavax/net/ssl/SSLContext;
    move-object v7, v6

    const/4 v8, 0x0

    move-object v9, v5

    const/4 v10, 0x0

    invoke-virtual {v7, v8, v9, v10}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    .line 306
    move-object v7, v0

    move-object v8, v6

    invoke-virtual {v8}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v8

    iput-object v8, v7, Lorg/jose4j/http/Get;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/KeyManagementException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/security/KeyStoreException; {:try_start_0 .. :try_end_0} :catch_4

    .line 311
    .line 312
    return-void

    .line 308
    .end local v2    # "trustMgrFactory":Ljavax/net/ssl/TrustManagerFactory;
    .end local v3    # "keyStore":Ljava/security/KeyStore;
    .end local v4    # "i":I
    .end local v5    # "customTrustManagers":[Ljavax/net/ssl/TrustManager;
    .end local v6    # "sslContext":Ljavax/net/ssl/SSLContext;
    :catch_0
    move-exception v7

    :goto_1
    move-object v2, v7

    .line 310
    .local v2, "e":Ljava/lang/Exception;
    new-instance v7, Lorg/jose4j/lang/UncheckedJoseException;

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    const-string/jumbo v9, "Unable to initialize socket factory with custom trusted  certificates."

    move-object v10, v2

    invoke-direct {v8, v9, v10}, Lorg/jose4j/lang/UncheckedJoseException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v7

    .line 308
    .end local v2    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v7

    goto :goto_1

    :catch_2
    move-exception v7

    goto :goto_1

    :catch_3
    move-exception v7

    goto :goto_1

    :catch_4
    move-exception v7

    goto :goto_1
.end method

.method public varargs setTrustedCertificates([Ljava/security/cert/X509Certificate;)V
    .locals 4

    .prologue
    .line 234
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/http/Get;
    move-object v1, p1

    .local v1, "certificates":[Ljava/security/cert/X509Certificate;
    move-object v2, v0

    move-object v3, v1

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/jose4j/http/Get;->setTrustedCertificates(Ljava/util/Collection;)V

    .line 235
    return-void
.end method

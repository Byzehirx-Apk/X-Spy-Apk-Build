.class final Lcom/google/appinventor/components/runtime/util/CsvUtil$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/appinventor/components/runtime/util/CsvUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<",
        "Ljava/util/List",
        "<",
        "Ljava/lang/String;",
        ">;>;"
    }
.end annotation


# instance fields
.field private final B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Ljava/util/regex/Pattern;

.field private BeAOotgA7zBP9Op6r2FqJlUCXvxuSHPx6BwhNdpgtXlIG2LNe5NWKzZhiJoW0gYE:I

.field private F0SK4gPRNmAI2jCyU6DpJpRxlfo5Y8j9ZujjeLuDeDzReJBeSNN2RZtCnkXv1dho:J

.field private IpCDSeDtSQ9aVIFHrTV0geVthcfgimpo1gHNFztT9EKnCqzMmr52GQEFh7mXSGc2:I

.field private WrlQqhIKmKuB9b4JVzpHXmCJrSlbkHSNA5ubvsLC9K31KYZzZrethddcAVSmF8Zp:Z

.field private eCKrLERXZY2Z3jwuVt55PeHUkE4lFRkPVtMcgtoMaoQxt1GsNCdNb2NNztke1B7i:I

.field private final hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Ljava/io/Reader;

.field private hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Ljava/lang/Exception;

.field private final hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:[C

.field private rt5vY3dr7aqqLpGGqZnuBZtCcoybaeOtN6eJM7wVAxcn7hidZNH6rGtSnPCIECFs:I


# direct methods
.method public constructor <init>(Ljava/io/Reader;)V
    .locals 4

    .prologue
    .line 148
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 95
    move-object v2, v0

    const-string/jumbo v3, "\"\""

    invoke-static {v3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v3

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/util/CsvUtil$a;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Ljava/util/regex/Pattern;

    .line 104
    move-object v2, v0

    const/16 v3, 0x2800

    new-array v3, v3, [C

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/util/CsvUtil$a;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:[C

    .line 123
    move-object v2, v0

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/google/appinventor/components/runtime/util/CsvUtil$a;->WrlQqhIKmKuB9b4JVzpHXmCJrSlbkHSNA5ubvsLC9K31KYZzZrethddcAVSmF8Zp:Z

    .line 130
    move-object v2, v0

    const/4 v3, -0x1

    iput v3, v2, Lcom/google/appinventor/components/runtime/util/CsvUtil$a;->rt5vY3dr7aqqLpGGqZnuBZtCcoybaeOtN6eJM7wVAxcn7hidZNH6rGtSnPCIECFs:I

    .line 138
    move-object v2, v0

    const/4 v3, -0x1

    iput v3, v2, Lcom/google/appinventor/components/runtime/util/CsvUtil$a;->eCKrLERXZY2Z3jwuVt55PeHUkE4lFRkPVtMcgtoMaoQxt1GsNCdNb2NNztke1B7i:I

    .line 149
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/util/CsvUtil$a;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Ljava/io/Reader;

    .line 150
    return-void
.end method

.method private f473zvQHzIj2nKVz26VGsoax0ZAlFbP830ERztRpaiUumZZlKb9jZe39pU8AJ0YJ()V
    .locals 8

    .prologue
    .line 229
    move-object v0, p0

    const/16 v3, 0x2800

    move-object v4, v0

    iget v4, v4, Lcom/google/appinventor/components/runtime/util/CsvUtil$a;->BeAOotgA7zBP9Op6r2FqJlUCXvxuSHPx6BwhNdpgtXlIG2LNe5NWKzZhiJoW0gYE:I

    rsub-int v3, v4, 0x2800

    move v1, v3

    .line 230
    :goto_0
    move-object v3, v0

    iget-boolean v3, v3, Lcom/google/appinventor/components/runtime/util/CsvUtil$a;->WrlQqhIKmKuB9b4JVzpHXmCJrSlbkHSNA5ubvsLC9K31KYZzZrethddcAVSmF8Zp:Z

    if-eqz v3, :cond_1

    move v3, v1

    if-lez v3, :cond_1

    .line 232
    move-object v3, v0

    :try_start_0
    iget-object v3, v3, Lcom/google/appinventor/components/runtime/util/CsvUtil$a;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Ljava/io/Reader;

    move-object v4, v0

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/util/CsvUtil$a;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:[C

    move-object v5, v0

    iget v5, v5, Lcom/google/appinventor/components/runtime/util/CsvUtil$a;->BeAOotgA7zBP9Op6r2FqJlUCXvxuSHPx6BwhNdpgtXlIG2LNe5NWKzZhiJoW0gYE:I

    move v6, v1

    invoke-virtual {v3, v4, v5, v6}, Ljava/io/Reader;->read([CII)I

    move-result v3

    move v7, v3

    move v3, v7

    move v4, v7

    .line 233
    move v2, v4

    const/4 v4, -0x1

    if-ne v3, v4, :cond_0

    .line 234
    move-object v3, v0

    const/4 v4, 0x0

    iput-boolean v4, v3, Lcom/google/appinventor/components/runtime/util/CsvUtil$a;->WrlQqhIKmKuB9b4JVzpHXmCJrSlbkHSNA5ubvsLC9K31KYZzZrethddcAVSmF8Zp:Z

    goto :goto_0

    .line 236
    :cond_0
    move-object v3, v0

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    iget v4, v4, Lcom/google/appinventor/components/runtime/util/CsvUtil$a;->BeAOotgA7zBP9Op6r2FqJlUCXvxuSHPx6BwhNdpgtXlIG2LNe5NWKzZhiJoW0gYE:I

    move v5, v2

    add-int/2addr v4, v5

    iput v4, v3, Lcom/google/appinventor/components/runtime/util/CsvUtil$a;->BeAOotgA7zBP9Op6r2FqJlUCXvxuSHPx6BwhNdpgtXlIG2LNe5NWKzZhiJoW0gYE:I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 237
    move v3, v1

    move v4, v2

    sub-int/2addr v3, v4

    move v1, v3

    .line 242
    goto :goto_0

    .line 239
    :catch_0
    move-exception v3

    move-object v2, v3

    .line 240
    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Lcom/google/appinventor/components/runtime/util/CsvUtil$a;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Ljava/lang/Exception;

    .line 241
    move-object v3, v0

    const/4 v4, 0x0

    iput-boolean v4, v3, Lcom/google/appinventor/components/runtime/util/CsvUtil$a;->WrlQqhIKmKuB9b4JVzpHXmCJrSlbkHSNA5ubvsLC9K31KYZzZrethddcAVSmF8Zp:Z

    .line 242
    goto :goto_0

    .line 244
    :cond_1
    return-void
.end method

.method private hR11jdqaRrvBRiBFd4KN6gI7d8MNQVP5Yc7fufDZjGGTeTxaualejjrhiR1Iz2xO(I)I
    .locals 4

    .prologue
    .line 301
    move-object v0, p0

    move v1, p1

    move v2, v1

    move-object v3, v0

    iget v3, v3, Lcom/google/appinventor/components/runtime/util/CsvUtil$a;->BeAOotgA7zBP9Op6r2FqJlUCXvxuSHPx6BwhNdpgtXlIG2LNe5NWKzZhiJoW0gYE:I

    if-ge v2, v3, :cond_0

    move v2, v1

    move v0, v2

    :goto_0
    return v0

    :cond_0
    move-object v2, v0

    move v3, v1

    invoke-direct {v2, v3}, Lcom/google/appinventor/components/runtime/util/CsvUtil$a;->wq07duYRO6iFAgWM70EZOSvbCMKs1QznMRJKrct0XuHOBYqCk3XqOKtSBGIpDou(I)I

    move-result v2

    move v0, v2

    goto :goto_0
.end method

.method private hR11jdqaRrvBRiBFd4KN6gI7d8MNQVP5Yc7fufDZjGGTeTxaualejjrhiR1Iz2xO(I)Z
    .locals 7

    .prologue
    .line 269
    move-object v0, p0

    move v1, p1

    :goto_0
    move v2, v1

    move-object v3, v0

    iget v3, v3, Lcom/google/appinventor/components/runtime/util/CsvUtil$a;->BeAOotgA7zBP9Op6r2FqJlUCXvxuSHPx6BwhNdpgtXlIG2LNe5NWKzZhiJoW0gYE:I

    if-lt v2, v3, :cond_0

    move-object v2, v0

    move v3, v1

    invoke-direct {v2, v3}, Lcom/google/appinventor/components/runtime/util/CsvUtil$a;->wq07duYRO6iFAgWM70EZOSvbCMKs1QznMRJKrct0XuHOBYqCk3XqOKtSBGIpDou(I)I

    move-result v2

    move v6, v2

    move v2, v6

    move v3, v6

    move v1, v3

    move-object v3, v0

    iget v3, v3, Lcom/google/appinventor/components/runtime/util/CsvUtil$a;->BeAOotgA7zBP9Op6r2FqJlUCXvxuSHPx6BwhNdpgtXlIG2LNe5NWKzZhiJoW0gYE:I

    if-ge v2, v3, :cond_2

    .line 270
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/util/CsvUtil$a;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:[C

    move v3, v1

    aget-char v2, v2, v3

    sparse-switch v2, :sswitch_data_0

    .line 286
    move-object v2, v0

    new-instance v3, Ljava/io/IOException;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    const-string/jumbo v5, "Syntax Error: non-whitespace between closing quote and delimiter or end"

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/util/CsvUtil$a;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Ljava/lang/Exception;

    .line 288
    const/4 v2, 0x0

    move v0, v2

    .line 292
    :goto_1
    return v0

    .line 274
    .line 269
    :sswitch_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 278
    :sswitch_1
    move-object v2, v0

    move v3, v1

    const/4 v4, 0x1

    add-int/lit8 v3, v3, 0x1

    invoke-direct {v2, v3}, Lcom/google/appinventor/components/runtime/util/CsvUtil$a;->hR11jdqaRrvBRiBFd4KN6gI7d8MNQVP5Yc7fufDZjGGTeTxaualejjrhiR1Iz2xO(I)I

    move-result v2

    move v1, v2

    .line 279
    move-object v2, v0

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/util/CsvUtil$a;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:[C

    move v4, v1

    aget-char v3, v3, v4

    const/16 v4, 0xa

    if-ne v3, v4, :cond_1

    move-object v3, v0

    move v4, v1

    const/4 v5, 0x1

    add-int/lit8 v4, v4, 0x1

    invoke-direct {v3, v4}, Lcom/google/appinventor/components/runtime/util/CsvUtil$a;->hR11jdqaRrvBRiBFd4KN6gI7d8MNQVP5Yc7fufDZjGGTeTxaualejjrhiR1Iz2xO(I)I

    move-result v3

    :goto_2
    move-object v4, v0

    iget v4, v4, Lcom/google/appinventor/components/runtime/util/CsvUtil$a;->IpCDSeDtSQ9aVIFHrTV0geVthcfgimpo1gHNFztT9EKnCqzMmr52GQEFh7mXSGc2:I

    sub-int/2addr v3, v4

    iput v3, v2, Lcom/google/appinventor/components/runtime/util/CsvUtil$a;->eCKrLERXZY2Z3jwuVt55PeHUkE4lFRkPVtMcgtoMaoQxt1GsNCdNb2NNztke1B7i:I

    .line 280
    const/4 v2, 0x1

    move v0, v2

    goto :goto_1

    .line 279
    :cond_1
    move v3, v1

    goto :goto_2

    .line 283
    :sswitch_2
    move-object v2, v0

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move v4, v1

    const/4 v5, 0x1

    add-int/lit8 v4, v4, 0x1

    invoke-direct {v3, v4}, Lcom/google/appinventor/components/runtime/util/CsvUtil$a;->hR11jdqaRrvBRiBFd4KN6gI7d8MNQVP5Yc7fufDZjGGTeTxaualejjrhiR1Iz2xO(I)I

    move-result v3

    move-object v4, v0

    iget v4, v4, Lcom/google/appinventor/components/runtime/util/CsvUtil$a;->IpCDSeDtSQ9aVIFHrTV0geVthcfgimpo1gHNFztT9EKnCqzMmr52GQEFh7mXSGc2:I

    sub-int/2addr v3, v4

    iput v3, v2, Lcom/google/appinventor/components/runtime/util/CsvUtil$a;->eCKrLERXZY2Z3jwuVt55PeHUkE4lFRkPVtMcgtoMaoQxt1GsNCdNb2NNztke1B7i:I

    .line 284
    const/4 v2, 0x1

    move v0, v2

    goto :goto_1

    .line 291
    :cond_2
    move-object v2, v0

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    iget v3, v3, Lcom/google/appinventor/components/runtime/util/CsvUtil$a;->BeAOotgA7zBP9Op6r2FqJlUCXvxuSHPx6BwhNdpgtXlIG2LNe5NWKzZhiJoW0gYE:I

    move-object v4, v0

    iget v4, v4, Lcom/google/appinventor/components/runtime/util/CsvUtil$a;->IpCDSeDtSQ9aVIFHrTV0geVthcfgimpo1gHNFztT9EKnCqzMmr52GQEFh7mXSGc2:I

    sub-int/2addr v3, v4

    iput v3, v2, Lcom/google/appinventor/components/runtime/util/CsvUtil$a;->eCKrLERXZY2Z3jwuVt55PeHUkE4lFRkPVtMcgtoMaoQxt1GsNCdNb2NNztke1B7i:I

    .line 292
    const/4 v2, 0x1

    move v0, v2

    goto :goto_1

    .line 270
    nop

    :sswitch_data_0
    .sparse-switch
        0x9 -> :sswitch_0
        0xa -> :sswitch_2
        0xd -> :sswitch_1
        0x20 -> :sswitch_0
        0x2c -> :sswitch_2
    .end sparse-switch
.end method

.method private qPeHJnCLP0dAOwDPeFIn82vcSIsCMh6KFFn3o4kyIe0RhQKOQXDeyY2LFwPu2GbE()Z
    .locals 5

    .prologue
    .line 247
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/util/CsvUtil$a;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:[C

    move-object v2, v0

    iget v2, v2, Lcom/google/appinventor/components/runtime/util/CsvUtil$a;->IpCDSeDtSQ9aVIFHrTV0geVthcfgimpo1gHNFztT9EKnCqzMmr52GQEFh7mXSGc2:I

    aget-char v1, v1, v2

    const/16 v2, 0x22

    if-ne v1, v2, :cond_0

    move-object v1, v0

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    iget v2, v2, Lcom/google/appinventor/components/runtime/util/CsvUtil$a;->IpCDSeDtSQ9aVIFHrTV0geVthcfgimpo1gHNFztT9EKnCqzMmr52GQEFh7mXSGc2:I

    const/4 v3, 0x1

    add-int/lit8 v2, v2, 0x1

    invoke-direct {v1, v2}, Lcom/google/appinventor/components/runtime/util/CsvUtil$a;->vSp02fkBXgM8EI0gm0rKWXHQ6wdQINJBQuAtCR15YU8g4XNqVKV8r32SYxkQYxkq(I)Z

    move-result v1

    move v0, v1

    :goto_0
    return v0

    :cond_0
    move-object v1, v0

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    iget v2, v2, Lcom/google/appinventor/components/runtime/util/CsvUtil$a;->IpCDSeDtSQ9aVIFHrTV0geVthcfgimpo1gHNFztT9EKnCqzMmr52GQEFh7mXSGc2:I

    invoke-direct {v1, v2}, Lcom/google/appinventor/components/runtime/util/CsvUtil$a;->vwEpIRqEf6xdtwTR9dehwBO7JUhyLV6iEzEK2WqfPN10eUMQDPn3AUmqAFfsnr6R(I)Z

    move-result v1

    move v0, v1

    goto :goto_0
.end method

.method private vSp02fkBXgM8EI0gm0rKWXHQ6wdQINJBQuAtCR15YU8g4XNqVKV8r32SYxkQYxkq(I)I
    .locals 12

    .prologue
    .line 214
    move-object v1, p0

    move v2, p1

    move-object v5, v1

    iget v5, v5, Lcom/google/appinventor/components/runtime/util/CsvUtil$a;->IpCDSeDtSQ9aVIFHrTV0geVthcfgimpo1gHNFztT9EKnCqzMmr52GQEFh7mXSGc2:I

    move v3, v5

    .line 215
    move-object v5, v1

    const/4 v6, 0x0

    iput v6, v5, Lcom/google/appinventor/components/runtime/util/CsvUtil$a;->IpCDSeDtSQ9aVIFHrTV0geVthcfgimpo1gHNFztT9EKnCqzMmr52GQEFh7mXSGc2:I

    .line 216
    move-object v5, v1

    iget v5, v5, Lcom/google/appinventor/components/runtime/util/CsvUtil$a;->BeAOotgA7zBP9Op6r2FqJlUCXvxuSHPx6BwhNdpgtXlIG2LNe5NWKzZhiJoW0gYE:I

    move v6, v3

    sub-int/2addr v5, v6

    move v10, v5

    move v5, v10

    move v6, v10

    .line 217
    move v4, v6

    if-lez v5, :cond_0

    .line 218
    move v5, v3

    move-object v6, v1

    iget-object v6, v6, Lcom/google/appinventor/components/runtime/util/CsvUtil$a;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:[C

    move v10, v5

    move-object v11, v6

    move-object v5, v11

    move v6, v10

    move-object v7, v11

    const/4 v8, 0x0

    move v9, v4

    invoke-static {v5, v6, v7, v8, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 220
    :cond_0
    move-object v5, v1

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    iget v6, v6, Lcom/google/appinventor/components/runtime/util/CsvUtil$a;->BeAOotgA7zBP9Op6r2FqJlUCXvxuSHPx6BwhNdpgtXlIG2LNe5NWKzZhiJoW0gYE:I

    move v7, v3

    sub-int/2addr v6, v7

    iput v6, v5, Lcom/google/appinventor/components/runtime/util/CsvUtil$a;->BeAOotgA7zBP9Op6r2FqJlUCXvxuSHPx6BwhNdpgtXlIG2LNe5NWKzZhiJoW0gYE:I

    .line 221
    move-object v5, v1

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    iget-wide v6, v6, Lcom/google/appinventor/components/runtime/util/CsvUtil$a;->F0SK4gPRNmAI2jCyU6DpJpRxlfo5Y8j9ZujjeLuDeDzReJBeSNN2RZtCnkXv1dho:J

    move v8, v3

    int-to-long v8, v8

    add-long/2addr v6, v8

    iput-wide v6, v5, Lcom/google/appinventor/components/runtime/util/CsvUtil$a;->F0SK4gPRNmAI2jCyU6DpJpRxlfo5Y8j9ZujjeLuDeDzReJBeSNN2RZtCnkXv1dho:J

    .line 222
    move v5, v2

    move v6, v3

    sub-int/2addr v5, v6

    move v1, v5

    return v1
.end method

.method private vSp02fkBXgM8EI0gm0rKWXHQ6wdQINJBQuAtCR15YU8g4XNqVKV8r32SYxkQYxkq(I)Z
    .locals 7

    .prologue
    .line 251
    move-object v0, p0

    move v1, p1

    :goto_0
    move v2, v1

    move-object v3, v0

    iget v3, v3, Lcom/google/appinventor/components/runtime/util/CsvUtil$a;->BeAOotgA7zBP9Op6r2FqJlUCXvxuSHPx6BwhNdpgtXlIG2LNe5NWKzZhiJoW0gYE:I

    if-lt v2, v3, :cond_0

    move-object v2, v0

    move v3, v1

    invoke-direct {v2, v3}, Lcom/google/appinventor/components/runtime/util/CsvUtil$a;->wq07duYRO6iFAgWM70EZOSvbCMKs1QznMRJKrct0XuHOBYqCk3XqOKtSBGIpDou(I)I

    move-result v2

    move v6, v2

    move v2, v6

    move v3, v6

    move v1, v3

    move-object v3, v0

    iget v3, v3, Lcom/google/appinventor/components/runtime/util/CsvUtil$a;->BeAOotgA7zBP9Op6r2FqJlUCXvxuSHPx6BwhNdpgtXlIG2LNe5NWKzZhiJoW0gYE:I

    if-ge v2, v3, :cond_3

    .line 252
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/util/CsvUtil$a;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:[C

    move v3, v1

    aget-char v2, v2, v3

    const/16 v3, 0x22

    if-ne v2, v3, :cond_2

    .line 253
    move-object v2, v0

    move v3, v1

    const/4 v4, 0x1

    add-int/lit8 v3, v3, 0x1

    invoke-direct {v2, v3}, Lcom/google/appinventor/components/runtime/util/CsvUtil$a;->hR11jdqaRrvBRiBFd4KN6gI7d8MNQVP5Yc7fufDZjGGTeTxaualejjrhiR1Iz2xO(I)I

    move-result v2

    move v6, v2

    move v2, v6

    move v3, v6

    .line 254
    move v1, v3

    move-object v3, v0

    iget v3, v3, Lcom/google/appinventor/components/runtime/util/CsvUtil$a;->BeAOotgA7zBP9Op6r2FqJlUCXvxuSHPx6BwhNdpgtXlIG2LNe5NWKzZhiJoW0gYE:I

    if-eq v2, v3, :cond_1

    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/util/CsvUtil$a;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:[C

    move v3, v1

    aget-char v2, v2, v3

    const/16 v3, 0x22

    if-eq v2, v3, :cond_2

    .line 255
    :cond_1
    move-object v2, v0

    move v3, v1

    move-object v4, v0

    iget v4, v4, Lcom/google/appinventor/components/runtime/util/CsvUtil$a;->IpCDSeDtSQ9aVIFHrTV0geVthcfgimpo1gHNFztT9EKnCqzMmr52GQEFh7mXSGc2:I

    sub-int/2addr v3, v4

    iput v3, v2, Lcom/google/appinventor/components/runtime/util/CsvUtil$a;->rt5vY3dr7aqqLpGGqZnuBZtCcoybaeOtN6eJM7wVAxcn7hidZNH6rGtSnPCIECFs:I

    .line 256
    move-object v2, v0

    move v3, v1

    invoke-direct {v2, v3}, Lcom/google/appinventor/components/runtime/util/CsvUtil$a;->hR11jdqaRrvBRiBFd4KN6gI7d8MNQVP5Yc7fufDZjGGTeTxaualejjrhiR1Iz2xO(I)Z

    move-result v2

    move v0, v2

    .line 261
    :goto_1
    return v0

    .line 251
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 260
    :cond_3
    move-object v2, v0

    new-instance v3, Ljava/lang/IllegalArgumentException;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    const-string/jumbo v5, "Syntax Error. unclosed quoted cell"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/util/CsvUtil$a;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Ljava/lang/Exception;

    .line 261
    const/4 v2, 0x0

    move v0, v2

    goto :goto_1
.end method

.method private vwEpIRqEf6xdtwTR9dehwBO7JUhyLV6iEzEK2WqfPN10eUMQDPn3AUmqAFfsnr6R(I)Z
    .locals 8

    .prologue
    .line 305
    move-object v0, p0

    move v1, p1

    :goto_0
    move v2, v1

    move-object v3, v0

    iget v3, v3, Lcom/google/appinventor/components/runtime/util/CsvUtil$a;->BeAOotgA7zBP9Op6r2FqJlUCXvxuSHPx6BwhNdpgtXlIG2LNe5NWKzZhiJoW0gYE:I

    if-lt v2, v3, :cond_0

    move-object v2, v0

    move v3, v1

    invoke-direct {v2, v3}, Lcom/google/appinventor/components/runtime/util/CsvUtil$a;->wq07duYRO6iFAgWM70EZOSvbCMKs1QznMRJKrct0XuHOBYqCk3XqOKtSBGIpDou(I)I

    move-result v2

    move v6, v2

    move v2, v6

    move v3, v6

    move v1, v3

    move-object v3, v0

    iget v3, v3, Lcom/google/appinventor/components/runtime/util/CsvUtil$a;->BeAOotgA7zBP9Op6r2FqJlUCXvxuSHPx6BwhNdpgtXlIG2LNe5NWKzZhiJoW0gYE:I

    if-ge v2, v3, :cond_2

    .line 306
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/util/CsvUtil$a;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:[C

    move v3, v1

    aget-char v2, v2, v3

    sparse-switch v2, :sswitch_data_0

    .line 305
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 309
    :sswitch_0
    move-object v2, v0

    move v3, v1

    move-object v4, v0

    iget v4, v4, Lcom/google/appinventor/components/runtime/util/CsvUtil$a;->IpCDSeDtSQ9aVIFHrTV0geVthcfgimpo1gHNFztT9EKnCqzMmr52GQEFh7mXSGc2:I

    sub-int/2addr v3, v4

    iput v3, v2, Lcom/google/appinventor/components/runtime/util/CsvUtil$a;->rt5vY3dr7aqqLpGGqZnuBZtCcoybaeOtN6eJM7wVAxcn7hidZNH6rGtSnPCIECFs:I

    .line 310
    move-object v2, v0

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    iget v3, v3, Lcom/google/appinventor/components/runtime/util/CsvUtil$a;->rt5vY3dr7aqqLpGGqZnuBZtCcoybaeOtN6eJM7wVAxcn7hidZNH6rGtSnPCIECFs:I

    const/4 v4, 0x1

    add-int/lit8 v3, v3, 0x1

    iput v3, v2, Lcom/google/appinventor/components/runtime/util/CsvUtil$a;->eCKrLERXZY2Z3jwuVt55PeHUkE4lFRkPVtMcgtoMaoQxt1GsNCdNb2NNztke1B7i:I

    .line 311
    const/4 v2, 0x1

    move v0, v2

    .line 325
    :goto_1
    return v0

    .line 315
    :sswitch_1
    move-object v2, v0

    move v3, v1

    move-object v4, v0

    iget v4, v4, Lcom/google/appinventor/components/runtime/util/CsvUtil$a;->IpCDSeDtSQ9aVIFHrTV0geVthcfgimpo1gHNFztT9EKnCqzMmr52GQEFh7mXSGc2:I

    sub-int/2addr v3, v4

    iput v3, v2, Lcom/google/appinventor/components/runtime/util/CsvUtil$a;->rt5vY3dr7aqqLpGGqZnuBZtCcoybaeOtN6eJM7wVAxcn7hidZNH6rGtSnPCIECFs:I

    .line 316
    move-object v2, v0

    move v3, v1

    const/4 v4, 0x1

    add-int/lit8 v3, v3, 0x1

    invoke-direct {v2, v3}, Lcom/google/appinventor/components/runtime/util/CsvUtil$a;->hR11jdqaRrvBRiBFd4KN6gI7d8MNQVP5Yc7fufDZjGGTeTxaualejjrhiR1Iz2xO(I)I

    move-result v2

    move v1, v2

    .line 317
    move-object v2, v0

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/util/CsvUtil$a;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:[C

    move v4, v1

    aget-char v3, v3, v4

    const/16 v4, 0xa

    if-ne v3, v4, :cond_1

    move-object v3, v0

    move v4, v1

    const/4 v5, 0x1

    add-int/lit8 v4, v4, 0x1

    invoke-direct {v3, v4}, Lcom/google/appinventor/components/runtime/util/CsvUtil$a;->hR11jdqaRrvBRiBFd4KN6gI7d8MNQVP5Yc7fufDZjGGTeTxaualejjrhiR1Iz2xO(I)I

    move-result v3

    :goto_2
    move-object v4, v0

    iget v4, v4, Lcom/google/appinventor/components/runtime/util/CsvUtil$a;->IpCDSeDtSQ9aVIFHrTV0geVthcfgimpo1gHNFztT9EKnCqzMmr52GQEFh7mXSGc2:I

    sub-int/2addr v3, v4

    iput v3, v2, Lcom/google/appinventor/components/runtime/util/CsvUtil$a;->eCKrLERXZY2Z3jwuVt55PeHUkE4lFRkPVtMcgtoMaoQxt1GsNCdNb2NNztke1B7i:I

    .line 318
    const/4 v2, 0x1

    move v0, v2

    goto :goto_1

    .line 317
    :cond_1
    move v3, v1

    goto :goto_2

    .line 320
    :sswitch_2
    move-object v2, v0

    new-instance v3, Ljava/lang/IllegalArgumentException;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    const-string/jumbo v5, "Syntax Error: quote in unquoted cell"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/util/CsvUtil$a;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Ljava/lang/Exception;

    .line 321
    const/4 v2, 0x0

    move v0, v2

    goto :goto_1

    .line 324
    :cond_2
    move-object v2, v0

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    iget v4, v4, Lcom/google/appinventor/components/runtime/util/CsvUtil$a;->BeAOotgA7zBP9Op6r2FqJlUCXvxuSHPx6BwhNdpgtXlIG2LNe5NWKzZhiJoW0gYE:I

    move-object v5, v0

    iget v5, v5, Lcom/google/appinventor/components/runtime/util/CsvUtil$a;->IpCDSeDtSQ9aVIFHrTV0geVthcfgimpo1gHNFztT9EKnCqzMmr52GQEFh7mXSGc2:I

    sub-int/2addr v4, v5

    move-object v6, v3

    move v7, v4

    move v3, v7

    move-object v4, v6

    move v5, v7

    iput v5, v4, Lcom/google/appinventor/components/runtime/util/CsvUtil$a;->rt5vY3dr7aqqLpGGqZnuBZtCcoybaeOtN6eJM7wVAxcn7hidZNH6rGtSnPCIECFs:I

    iput v3, v2, Lcom/google/appinventor/components/runtime/util/CsvUtil$a;->eCKrLERXZY2Z3jwuVt55PeHUkE4lFRkPVtMcgtoMaoQxt1GsNCdNb2NNztke1B7i:I

    .line 325
    const/4 v2, 0x1

    move v0, v2

    goto :goto_1

    .line 306
    :sswitch_data_0
    .sparse-switch
        0xa -> :sswitch_0
        0xd -> :sswitch_1
        0x22 -> :sswitch_2
        0x2c -> :sswitch_0
    .end sparse-switch
.end method

.method private wq07duYRO6iFAgWM70EZOSvbCMKs1QznMRJKrct0XuHOBYqCk3XqOKtSBGIpDou(I)I
    .locals 4

    .prologue
    .line 202
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget v2, v2, Lcom/google/appinventor/components/runtime/util/CsvUtil$a;->IpCDSeDtSQ9aVIFHrTV0geVthcfgimpo1gHNFztT9EKnCqzMmr52GQEFh7mXSGc2:I

    if-lez v2, :cond_0

    .line 203
    move-object v2, v0

    move v3, v1

    invoke-direct {v2, v3}, Lcom/google/appinventor/components/runtime/util/CsvUtil$a;->vSp02fkBXgM8EI0gm0rKWXHQ6wdQINJBQuAtCR15YU8g4XNqVKV8r32SYxkQYxkq(I)I

    move-result v2

    move v1, v2

    .line 205
    :cond_0
    move-object v2, v0

    invoke-direct {v2}, Lcom/google/appinventor/components/runtime/util/CsvUtil$a;->f473zvQHzIj2nKVz26VGsoax0ZAlFbP830ERztRpaiUumZZlKb9jZe39pU8AJ0YJ()V

    .line 206
    move v2, v1

    move v0, v2

    return v0
.end method


# virtual methods
.method public final hasNext()Z
    .locals 4

    .prologue
    .line 164
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Lcom/google/appinventor/components/runtime/util/CsvUtil$a;->BeAOotgA7zBP9Op6r2FqJlUCXvxuSHPx6BwhNdpgtXlIG2LNe5NWKzZhiJoW0gYE:I

    if-nez v1, :cond_0

    .line 165
    move-object v1, v0

    invoke-direct {v1}, Lcom/google/appinventor/components/runtime/util/CsvUtil$a;->f473zvQHzIj2nKVz26VGsoax0ZAlFbP830ERztRpaiUumZZlKb9jZe39pU8AJ0YJ()V

    .line 167
    :cond_0
    move-object v1, v0

    iget v1, v1, Lcom/google/appinventor/components/runtime/util/CsvUtil$a;->IpCDSeDtSQ9aVIFHrTV0geVthcfgimpo1gHNFztT9EKnCqzMmr52GQEFh7mXSGc2:I

    move-object v2, v0

    iget v2, v2, Lcom/google/appinventor/components/runtime/util/CsvUtil$a;->BeAOotgA7zBP9Op6r2FqJlUCXvxuSHPx6BwhNdpgtXlIG2LNe5NWKzZhiJoW0gYE:I

    if-lt v1, v2, :cond_1

    move-object v1, v0

    move-object v3, v1

    move-object v1, v3

    move-object v2, v3

    iget v2, v2, Lcom/google/appinventor/components/runtime/util/CsvUtil$a;->IpCDSeDtSQ9aVIFHrTV0geVthcfgimpo1gHNFztT9EKnCqzMmr52GQEFh7mXSGc2:I

    invoke-direct {v1, v2}, Lcom/google/appinventor/components/runtime/util/CsvUtil$a;->wq07duYRO6iFAgWM70EZOSvbCMKs1QznMRJKrct0XuHOBYqCk3XqOKtSBGIpDou(I)I

    move-result v1

    move-object v2, v0

    iget v2, v2, Lcom/google/appinventor/components/runtime/util/CsvUtil$a;->BeAOotgA7zBP9Op6r2FqJlUCXvxuSHPx6BwhNdpgtXlIG2LNe5NWKzZhiJoW0gYE:I

    if-ge v1, v2, :cond_2

    :cond_1
    move-object v1, v0

    invoke-direct {v1}, Lcom/google/appinventor/components/runtime/util/CsvUtil$a;->qPeHJnCLP0dAOwDPeFIn82vcSIsCMh6KFFn3o4kyIe0RhQKOQXDeyY2LFwPu2GbE()Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    move v0, v1

    :goto_0
    return v0

    :cond_2
    const/4 v1, 0x0

    move v0, v1

    goto :goto_0
.end method

.method public final hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME()Ljava/util/ArrayList;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 171
    move-object v0, p0

    invoke-static {}, Lcom/google/appinventor/components/runtime/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v4

    move-object v1, v4

    .line 177
    :cond_0
    move-object v4, v0

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/util/CsvUtil$a;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:[C

    move-object v5, v0

    iget v5, v5, Lcom/google/appinventor/components/runtime/util/CsvUtil$a;->IpCDSeDtSQ9aVIFHrTV0geVthcfgimpo1gHNFztT9EKnCqzMmr52GQEFh7mXSGc2:I

    aget-char v4, v4, v5

    const/16 v5, 0x22

    if-eq v4, v5, :cond_3

    .line 180
    move-object v4, v1

    new-instance v5, Ljava/lang/String;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    move-object v7, v0

    iget-object v7, v7, Lcom/google/appinventor/components/runtime/util/CsvUtil$a;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:[C

    move-object v8, v0

    iget v8, v8, Lcom/google/appinventor/components/runtime/util/CsvUtil$a;->IpCDSeDtSQ9aVIFHrTV0geVthcfgimpo1gHNFztT9EKnCqzMmr52GQEFh7mXSGc2:I

    move-object v9, v0

    iget v9, v9, Lcom/google/appinventor/components/runtime/util/CsvUtil$a;->rt5vY3dr7aqqLpGGqZnuBZtCcoybaeOtN6eJM7wVAxcn7hidZNH6rGtSnPCIECFs:I

    invoke-direct {v6, v7, v8, v9}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v4

    .line 185
    :goto_0
    move-object v4, v0

    iget v4, v4, Lcom/google/appinventor/components/runtime/util/CsvUtil$a;->eCKrLERXZY2Z3jwuVt55PeHUkE4lFRkPVtMcgtoMaoQxt1GsNCdNb2NNztke1B7i:I

    if-lez v4, :cond_4

    move-object v4, v0

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/util/CsvUtil$a;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:[C

    move-object v5, v0

    iget v5, v5, Lcom/google/appinventor/components/runtime/util/CsvUtil$a;->IpCDSeDtSQ9aVIFHrTV0geVthcfgimpo1gHNFztT9EKnCqzMmr52GQEFh7mXSGc2:I

    move-object v6, v0

    iget v6, v6, Lcom/google/appinventor/components/runtime/util/CsvUtil$a;->eCKrLERXZY2Z3jwuVt55PeHUkE4lFRkPVtMcgtoMaoQxt1GsNCdNb2NNztke1B7i:I

    add-int/2addr v5, v6

    const/4 v6, 0x1

    add-int/lit8 v5, v5, -0x1

    aget-char v4, v4, v5

    const/16 v5, 0x2c

    if-ne v4, v5, :cond_4

    const/4 v4, 0x1

    :goto_1
    move v2, v4

    .line 186
    move-object v4, v0

    move-object v10, v4

    move-object v4, v10

    move-object v5, v10

    iget v5, v5, Lcom/google/appinventor/components/runtime/util/CsvUtil$a;->IpCDSeDtSQ9aVIFHrTV0geVthcfgimpo1gHNFztT9EKnCqzMmr52GQEFh7mXSGc2:I

    move-object v6, v0

    iget v6, v6, Lcom/google/appinventor/components/runtime/util/CsvUtil$a;->eCKrLERXZY2Z3jwuVt55PeHUkE4lFRkPVtMcgtoMaoQxt1GsNCdNb2NNztke1B7i:I

    add-int/2addr v5, v6

    iput v5, v4, Lcom/google/appinventor/components/runtime/util/CsvUtil$a;->IpCDSeDtSQ9aVIFHrTV0geVthcfgimpo1gHNFztT9EKnCqzMmr52GQEFh7mXSGc2:I

    .line 187
    move-object v4, v0

    move-object v10, v4

    move-object v4, v10

    move-object v5, v10

    const/4 v6, -0x1

    move-object v10, v5

    move v11, v6

    move v5, v11

    move-object v6, v10

    move v7, v11

    iput v7, v6, Lcom/google/appinventor/components/runtime/util/CsvUtil$a;->rt5vY3dr7aqqLpGGqZnuBZtCcoybaeOtN6eJM7wVAxcn7hidZNH6rGtSnPCIECFs:I

    iput v5, v4, Lcom/google/appinventor/components/runtime/util/CsvUtil$a;->eCKrLERXZY2Z3jwuVt55PeHUkE4lFRkPVtMcgtoMaoQxt1GsNCdNb2NNztke1B7i:I

    .line 188
    move-object v4, v0

    iget v4, v4, Lcom/google/appinventor/components/runtime/util/CsvUtil$a;->IpCDSeDtSQ9aVIFHrTV0geVthcfgimpo1gHNFztT9EKnCqzMmr52GQEFh7mXSGc2:I

    move-object v5, v0

    iget v5, v5, Lcom/google/appinventor/components/runtime/util/CsvUtil$a;->BeAOotgA7zBP9Op6r2FqJlUCXvxuSHPx6BwhNdpgtXlIG2LNe5NWKzZhiJoW0gYE:I

    if-lt v4, v5, :cond_1

    move-object v4, v0

    move-object v10, v4

    move-object v4, v10

    move-object v5, v10

    iget v5, v5, Lcom/google/appinventor/components/runtime/util/CsvUtil$a;->IpCDSeDtSQ9aVIFHrTV0geVthcfgimpo1gHNFztT9EKnCqzMmr52GQEFh7mXSGc2:I

    invoke-direct {v4, v5}, Lcom/google/appinventor/components/runtime/util/CsvUtil$a;->wq07duYRO6iFAgWM70EZOSvbCMKs1QznMRJKrct0XuHOBYqCk3XqOKtSBGIpDou(I)I

    move-result v4

    move-object v5, v0

    iget v5, v5, Lcom/google/appinventor/components/runtime/util/CsvUtil$a;->BeAOotgA7zBP9Op6r2FqJlUCXvxuSHPx6BwhNdpgtXlIG2LNe5NWKzZhiJoW0gYE:I

    if-ge v4, v5, :cond_5

    :cond_1
    const/4 v4, 0x1

    :goto_2
    move v3, v4

    .line 189
    move v4, v2

    if-eqz v4, :cond_2

    move v4, v3

    if-eqz v4, :cond_2

    move-object v4, v0

    invoke-direct {v4}, Lcom/google/appinventor/components/runtime/util/CsvUtil$a;->qPeHJnCLP0dAOwDPeFIn82vcSIsCMh6KFFn3o4kyIe0RhQKOQXDeyY2LFwPu2GbE()Z

    move-result v4

    if-nez v4, :cond_0

    .line 190
    :cond_2
    move-object v4, v1

    move-object v0, v4

    return-object v0

    .line 182
    :cond_3
    new-instance v4, Ljava/lang/String;

    move-object v10, v4

    move-object v4, v10

    move-object v5, v10

    move-object v6, v0

    iget-object v6, v6, Lcom/google/appinventor/components/runtime/util/CsvUtil$a;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:[C

    move-object v7, v0

    iget v7, v7, Lcom/google/appinventor/components/runtime/util/CsvUtil$a;->IpCDSeDtSQ9aVIFHrTV0geVthcfgimpo1gHNFztT9EKnCqzMmr52GQEFh7mXSGc2:I

    const/4 v8, 0x1

    add-int/lit8 v7, v7, 0x1

    move-object v8, v0

    iget v8, v8, Lcom/google/appinventor/components/runtime/util/CsvUtil$a;->rt5vY3dr7aqqLpGGqZnuBZtCcoybaeOtN6eJM7wVAxcn7hidZNH6rGtSnPCIECFs:I

    const/4 v9, 0x2

    add-int/lit8 v8, v8, -0x2

    invoke-direct {v5, v6, v7, v8}, Ljava/lang/String;-><init>([CII)V

    move-object v2, v4

    .line 183
    move-object v4, v1

    move-object v5, v0

    iget-object v5, v5, Lcom/google/appinventor/components/runtime/util/CsvUtil$a;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Ljava/util/regex/Pattern;

    move-object v6, v2

    invoke-virtual {v5, v6}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v5

    const-string/jumbo v6, "\""

    invoke-virtual {v5, v6}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v4

    goto/16 :goto_0

    .line 185
    :cond_4
    const/4 v4, 0x0

    goto :goto_1

    .line 188
    :cond_5
    const/4 v4, 0x0

    goto :goto_2
.end method

.method public final synthetic next()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 91
    move-object v0, p0

    move-object v1, v0

    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/util/CsvUtil$a;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME()Ljava/util/ArrayList;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public final remove()V
    .locals 4

    .prologue
    .line 329
    move-object v0, p0

    new-instance v1, Ljava/lang/UnsupportedOperationException;

    move-object v3, v1

    move-object v1, v3

    move-object v2, v3

    invoke-direct {v2}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v1
.end method

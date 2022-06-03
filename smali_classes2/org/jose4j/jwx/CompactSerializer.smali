.class public Lorg/jose4j/jwx/CompactSerializer;
.super Ljava/lang/Object;
.source "CompactSerializer.java"


# static fields
.field private static final EMPTY_STRING:Ljava/lang/String; = ""

.field private static final PERIOD_SEPARATOR:Ljava/lang/String; = "."

.field private static final PERIOD_SEPARATOR_REGEX:Ljava/lang/String; = "\\."


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 21
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/jwx/CompactSerializer;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static deserialize(Ljava/lang/String;)[Ljava/lang/String;
    .locals 8

    .prologue
    .line 30
    move-object v0, p0

    .local v0, "compactSerialization":Ljava/lang/String;
    move-object v3, v0

    const-string/jumbo v4, "\\."

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    move-object v1, v3

    .line 32
    .local v1, "parts":[Ljava/lang/String;
    move-object v3, v0

    const-string/jumbo v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 34
    move-object v3, v1

    array-length v3, v3

    const/4 v4, 0x1

    add-int/lit8 v3, v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    move-object v2, v3

    .line 35
    .local v2, "tempParts":[Ljava/lang/String;
    move-object v3, v1

    const/4 v4, 0x0

    move-object v5, v2

    const/4 v6, 0x0

    move-object v7, v1

    array-length v7, v7

    invoke-static {v3, v4, v5, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 36
    move-object v3, v2

    move-object v4, v1

    array-length v4, v4

    const-string/jumbo v5, ""

    aput-object v5, v3, v4

    .line 37
    move-object v3, v2

    move-object v1, v3

    .line 40
    .end local v2    # "tempParts":[Ljava/lang/String;
    :cond_0
    move-object v3, v1

    move-object v0, v3

    .end local v0    # "compactSerialization":Ljava/lang/String;
    return-object v0
.end method

.method public static varargs serialize([Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    .prologue
    .line 45
    move-object v0, p0

    .local v0, "parts":[Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object v1, v4

    .line 46
    .local v1, "sb":Ljava/lang/StringBuilder;
    const/4 v4, 0x0

    move v2, v4

    .local v2, "i":I
    :goto_0
    move v4, v2

    move-object v5, v0

    array-length v5, v5

    if-ge v4, v5, :cond_2

    .line 48
    move-object v4, v0

    move v5, v2

    aget-object v4, v4, v5

    if-nez v4, :cond_1

    const-string/jumbo v4, ""

    :goto_1
    move-object v3, v4

    .line 49
    .local v3, "part":Ljava/lang/String;
    move-object v4, v1

    move-object v5, v3

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 50
    move v4, v2

    move-object v5, v0

    array-length v5, v5

    const/4 v6, 0x1

    add-int/lit8 v5, v5, -0x1

    if-eq v4, v5, :cond_0

    .line 52
    move-object v4, v1

    const-string/jumbo v5, "."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 46
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 48
    .end local v3    # "part":Ljava/lang/String;
    :cond_1
    move-object v4, v0

    move v5, v2

    aget-object v4, v4, v5

    goto :goto_1

    .line 55
    :cond_2
    move-object v4, v1

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v0, v4

    .end local v0    # "parts":[Ljava/lang/String;
    return-object v0
.end method

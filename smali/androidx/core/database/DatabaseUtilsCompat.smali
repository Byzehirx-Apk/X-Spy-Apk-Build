.class public final Landroidx/core/database/DatabaseUtilsCompat;
.super Ljava/lang/Object;
.source "DatabaseUtilsCompat.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 29
    move-object v0, p0

    .local v0, "this":Landroidx/core/database/DatabaseUtilsCompat;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 31
    return-void
.end method

.method public static appendSelectionArgs([Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;
    .locals 8
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 60
    move-object v0, p0

    .local v0, "originalValues":[Ljava/lang/String;
    move-object v1, p1

    .local v1, "newValues":[Ljava/lang/String;
    move-object v3, v0

    if-eqz v3, :cond_0

    move-object v3, v0

    array-length v3, v3

    if-nez v3, :cond_1

    .line 61
    :cond_0
    move-object v3, v1

    move-object v0, v3

    .line 66
    .end local v0    # "originalValues":[Ljava/lang/String;
    :goto_0
    return-object v0

    .line 63
    .restart local v0    # "originalValues":[Ljava/lang/String;
    :cond_1
    move-object v3, v0

    array-length v3, v3

    move-object v4, v1

    array-length v4, v4

    add-int/2addr v3, v4

    new-array v3, v3, [Ljava/lang/String;

    move-object v2, v3

    .line 64
    .local v2, "result":[Ljava/lang/String;
    move-object v3, v0

    const/4 v4, 0x0

    move-object v5, v2

    const/4 v6, 0x0

    move-object v7, v0

    array-length v7, v7

    invoke-static {v3, v4, v5, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 65
    move-object v3, v1

    const/4 v4, 0x0

    move-object v5, v2

    move-object v6, v0

    array-length v6, v6

    move-object v7, v1

    array-length v7, v7

    invoke-static {v3, v4, v5, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 66
    move-object v3, v2

    move-object v0, v3

    goto :goto_0
.end method

.method public static concatenateWhere(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 41
    move-object v0, p0

    .local v0, "a":Ljava/lang/String;
    move-object v1, p1

    .local v1, "b":Ljava/lang/String;
    move-object v2, v0

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 42
    move-object v2, v1

    move-object v0, v2

    .line 48
    .end local v0    # "a":Ljava/lang/String;
    :goto_0
    return-object v0

    .line 44
    .restart local v0    # "a":Ljava/lang/String;
    :cond_0
    move-object v2, v1

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 45
    move-object v2, v0

    move-object v0, v2

    goto :goto_0

    .line 48
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ") AND ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    goto :goto_0
.end method

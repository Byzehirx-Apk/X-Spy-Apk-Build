.class public final Lcom/google/appinventor/components/runtime/util/CsvUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/appinventor/components/runtime/util/CsvUtil$a;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 26
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 27
    return-void
.end method

.method public static fromCsvRow(Ljava/lang/String;)Lcom/google/appinventor/components/runtime/util/YailList;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 40
    move-object v0, p0

    new-instance v2, Lcom/google/appinventor/components/runtime/util/CsvUtil$a;

    move-object v7, v2

    move-object v2, v7

    move-object v3, v7

    new-instance v4, Ljava/io/StringReader;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    move-object v6, v0

    invoke-direct {v5, v6}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v4}, Lcom/google/appinventor/components/runtime/util/CsvUtil$a;-><init>(Ljava/io/Reader;)V

    move-object v7, v2

    move-object v2, v7

    move-object v3, v7

    .line 41
    move-object v0, v3

    invoke-virtual {v2}, Lcom/google/appinventor/components/runtime/util/CsvUtil$a;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 42
    move-object v2, v0

    invoke-virtual {v2}, Lcom/google/appinventor/components/runtime/util/CsvUtil$a;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME()Ljava/util/ArrayList;

    move-result-object v2

    invoke-static {v2}, Lcom/google/appinventor/components/runtime/util/YailList;->makeList(Ljava/util/List;)Lcom/google/appinventor/components/runtime/util/YailList;

    move-result-object v2

    move-object v1, v2

    .line 43
    move-object v2, v0

    invoke-virtual {v2}, Lcom/google/appinventor/components/runtime/util/CsvUtil$a;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 45
    new-instance v2, Ljava/lang/IllegalArgumentException;

    move-object v7, v2

    move-object v2, v7

    move-object v3, v7

    const-string/jumbo v4, "CSV text has multiple rows. Expected just one row."

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 48
    :cond_0
    move-object v2, v1

    move-object v0, v2

    return-object v0

    .line 50
    :cond_1
    new-instance v2, Ljava/lang/IllegalArgumentException;

    move-object v7, v2

    move-object v2, v7

    move-object v3, v7

    const-string/jumbo v4, "CSV text cannot be parsed as a row."

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static fromCsvTable(Ljava/lang/String;)Lcom/google/appinventor/components/runtime/util/YailList;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 30
    move-object v0, p0

    new-instance v2, Lcom/google/appinventor/components/runtime/util/CsvUtil$a;

    move-object v7, v2

    move-object v2, v7

    move-object v3, v7

    new-instance v4, Ljava/io/StringReader;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    move-object v6, v0

    invoke-direct {v5, v6}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v4}, Lcom/google/appinventor/components/runtime/util/CsvUtil$a;-><init>(Ljava/io/Reader;)V

    move-object v0, v2

    .line 31
    new-instance v2, Ljava/util/ArrayList;

    move-object v7, v2

    move-object v2, v7

    move-object v3, v7

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move-object v1, v2

    .line 32
    :goto_0
    move-object v2, v0

    invoke-virtual {v2}, Lcom/google/appinventor/components/runtime/util/CsvUtil$a;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 33
    move-object v2, v1

    move-object v3, v0

    invoke-virtual {v3}, Lcom/google/appinventor/components/runtime/util/CsvUtil$a;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME()Ljava/util/ArrayList;

    move-result-object v3

    invoke-static {v3}, Lcom/google/appinventor/components/runtime/util/YailList;->makeList(Ljava/util/List;)Lcom/google/appinventor/components/runtime/util/YailList;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v2

    goto :goto_0

    .line 36
    :cond_0
    move-object v2, v1

    invoke-static {v2}, Lcom/google/appinventor/components/runtime/util/YailList;->makeList(Ljava/util/List;)Lcom/google/appinventor/components/runtime/util/YailList;

    move-result-object v2

    move-object v0, v2

    return-object v0
.end method

.method private static hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/util/YailList;Ljava/lang/StringBuilder;)V
    .locals 10

    .prologue
    .line 76
    move-object v0, p0

    move-object v1, p1

    const-string/jumbo v6, ""

    move-object v2, v6

    .line 77
    move-object v6, v0

    invoke-virtual {v6}, Lcom/google/appinventor/components/runtime/util/YailList;->toArray()[Ljava/lang/Object;

    move-result-object v6

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    move-object v0, v7

    array-length v6, v6

    move v3, v6

    const/4 v6, 0x0

    move v4, v6

    :goto_0
    move v6, v4

    move v7, v3

    if-ge v6, v7, :cond_0

    move-object v6, v0

    move v7, v4

    aget-object v6, v6, v7

    .line 78
    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    .line 79
    const-string/jumbo v7, "\""

    const-string/jumbo v8, "\"\""

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    move-object v5, v6

    .line 80
    move-object v6, v1

    move-object v7, v2

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "\""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v7, v5

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "\""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 81
    const-string/jumbo v6, ","

    move-object v2, v6

    .line 77
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 83
    :cond_0
    return-void
.end method

.method public static toCsvRow(Lcom/google/appinventor/components/runtime/util/YailList;)Ljava/lang/String;
    .locals 5

    .prologue
    .line 55
    move-object v0, p0

    new-instance v2, Ljava/lang/StringBuilder;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object v1, v2

    .line 56
    move-object v2, v0

    move-object v3, v1

    invoke-static {v2, v3}, Lcom/google/appinventor/components/runtime/util/CsvUtil;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/util/YailList;Ljava/lang/StringBuilder;)V

    .line 57
    move-object v2, v1

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    return-object v0
.end method

.method public static toCsvTable(Lcom/google/appinventor/components/runtime/util/YailList;)Ljava/lang/String;
    .locals 7

    .prologue
    .line 64
    move-object v0, p0

    new-instance v4, Ljava/lang/StringBuilder;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object v1, v4

    .line 65
    move-object v4, v0

    invoke-virtual {v4}, Lcom/google/appinventor/components/runtime/util/YailList;->toArray()[Ljava/lang/Object;

    move-result-object v4

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    move-object v0, v5

    array-length v4, v4

    move v2, v4

    const/4 v4, 0x0

    move v3, v4

    :goto_0
    move v4, v3

    move v5, v2

    if-ge v4, v5, :cond_0

    move-object v4, v0

    move v5, v3

    aget-object v4, v4, v5

    .line 66
    check-cast v4, Lcom/google/appinventor/components/runtime/util/YailList;

    move-object v5, v1

    invoke-static {v4, v5}, Lcom/google/appinventor/components/runtime/util/CsvUtil;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/util/YailList;Ljava/lang/StringBuilder;)V

    .line 70
    move-object v4, v1

    const-string/jumbo v5, "\r\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 65
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 72
    :cond_0
    move-object v4, v1

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v0, v4

    return-object v0
.end method

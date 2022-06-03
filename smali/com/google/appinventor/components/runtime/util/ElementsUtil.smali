.class public Lcom/google/appinventor/components/runtime/util/ElementsUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 15
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static elements(Lcom/google/appinventor/components/runtime/util/YailList;Ljava/lang/String;)Lcom/google/appinventor/components/runtime/util/YailList;
    .locals 10

    .prologue
    .line 34
    move-object v0, p0

    move-object v1, p1

    move-object v4, v0

    invoke-virtual {v4}, Lcom/google/appinventor/components/runtime/util/YailList;->toStringArray()[Ljava/lang/String;

    move-result-object v4

    move-object v2, v4

    .line 35
    const/4 v4, 0x0

    move v3, v4

    :goto_0
    move v4, v3

    move-object v5, v2

    array-length v5, v5

    if-ge v4, v5, :cond_1

    .line 36
    move-object v4, v2

    move v5, v3

    aget-object v4, v4, v5

    instance-of v4, v4, Ljava/lang/String;

    if-nez v4, :cond_0

    .line 37
    new-instance v4, Lcom/google/appinventor/components/runtime/errors/YailRuntimeError;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    new-instance v6, Ljava/lang/StringBuilder;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    const-string/jumbo v8, "Items passed to "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v7, v1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " must be Strings"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "Error"

    invoke-direct {v5, v6, v7}, Lcom/google/appinventor/components/runtime/errors/YailRuntimeError;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v4

    .line 35
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 42
    :cond_1
    move-object v4, v0

    move-object v0, v4

    return-object v0
.end method

.method public static elementsFromString(Ljava/lang/String;)Lcom/google/appinventor/components/runtime/util/YailList;
    .locals 5

    .prologue
    .line 18
    move-object v0, p0

    new-instance v2, Lcom/google/appinventor/components/runtime/util/YailList;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Lcom/google/appinventor/components/runtime/util/YailList;-><init>()V

    move-object v1, v2

    .line 19
    move-object v2, v0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 20
    move-object v2, v0

    const-string/jumbo v3, " *, *"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    check-cast v2, [Ljava/lang/Object;

    invoke-static {v2}, Lcom/google/appinventor/components/runtime/util/YailList;->makeList([Ljava/lang/Object;)Lcom/google/appinventor/components/runtime/util/YailList;

    move-result-object v2

    move-object v1, v2

    .line 23
    :cond_0
    move-object v2, v1

    move-object v0, v2

    return-object v0
.end method

.method public static selectionIndex(ILcom/google/appinventor/components/runtime/util/YailList;)I
    .locals 4

    .prologue
    .line 46
    move v0, p0

    move-object v1, p1

    move v2, v0

    if-lez v2, :cond_0

    move v2, v0

    move-object v3, v1

    invoke-virtual {v3}, Lcom/google/appinventor/components/runtime/util/YailList;->size()I

    move-result v3

    if-le v2, v3, :cond_1

    .line 47
    :cond_0
    const/4 v2, 0x0

    move v0, v2

    .line 49
    :goto_0
    return v0

    :cond_1
    move v2, v0

    move v0, v2

    goto :goto_0
.end method

.method public static setSelectedIndexFromValue(Ljava/lang/String;Lcom/google/appinventor/components/runtime/util/YailList;)I
    .locals 5

    .prologue
    .line 65
    move-object v0, p0

    move-object v1, p1

    const/4 v3, 0x0

    move v2, v3

    :goto_0
    move v3, v2

    move-object v4, v1

    invoke-virtual {v4}, Lcom/google/appinventor/components/runtime/util/YailList;->size()I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 67
    move-object v3, v1

    move v4, v2

    invoke-virtual {v3, v4}, Lcom/google/appinventor/components/runtime/util/YailList;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 68
    move v3, v2

    const/4 v4, 0x1

    add-int/lit8 v3, v3, 0x1

    move v0, v3

    .line 71
    :goto_1
    return v0

    .line 65
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 71
    :cond_1
    const/4 v3, 0x0

    move v0, v3

    goto :goto_1
.end method

.method public static setSelectionFromIndex(ILcom/google/appinventor/components/runtime/util/YailList;)Ljava/lang/String;
    .locals 5

    .prologue
    .line 54
    move v0, p0

    move-object v1, p1

    move v2, v0

    if-nez v2, :cond_0

    .line 55
    const-string/jumbo v2, ""

    move-object v0, v2

    .line 57
    :goto_0
    return-object v0

    :cond_0
    move-object v2, v1

    move v3, v0

    const/4 v4, 0x1

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3}, Lcom/google/appinventor/components/runtime/util/YailList;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    goto :goto_0
.end method

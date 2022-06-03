.class final Landroidx/core/os/LocaleHelper;
.super Ljava/lang/Object;
.source "LocaleHelper.java"


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 73
    move-object v0, p0

    .local v0, "this":Landroidx/core/os/LocaleHelper;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 74
    return-void
.end method

.method static forLanguageTag(Ljava/lang/String;)Ljava/util/Locale;
    .locals 9

    .prologue
    .line 35
    move-object v0, p0

    .local v0, "str":Ljava/lang/String;
    move-object v2, v0

    const-string/jumbo v3, "-"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 36
    move-object v2, v0

    const-string/jumbo v3, "-"

    const/4 v4, -0x1

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v2

    move-object v1, v2

    .line 37
    .local v1, "args":[Ljava/lang/String;
    move-object v2, v1

    array-length v2, v2

    const/4 v3, 0x2

    if-le v2, v3, :cond_0

    .line 38
    new-instance v2, Ljava/util/Locale;

    move-object v8, v2

    move-object v2, v8

    move-object v3, v8

    move-object v4, v1

    const/4 v5, 0x0

    aget-object v4, v4, v5

    move-object v5, v1

    const/4 v6, 0x1

    aget-object v5, v5, v6

    move-object v6, v1

    const/4 v7, 0x2

    aget-object v6, v6, v7

    invoke-direct {v3, v4, v5, v6}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v2

    .line 54
    .end local v0    # "str":Ljava/lang/String;
    .end local v1    # "args":[Ljava/lang/String;
    :goto_0
    return-object v0

    .line 39
    .restart local v0    # "str":Ljava/lang/String;
    .restart local v1    # "args":[Ljava/lang/String;
    :cond_0
    move-object v2, v1

    array-length v2, v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_1

    .line 40
    new-instance v2, Ljava/util/Locale;

    move-object v8, v2

    move-object v2, v8

    move-object v3, v8

    move-object v4, v1

    const/4 v5, 0x0

    aget-object v4, v4, v5

    move-object v5, v1

    const/4 v6, 0x1

    aget-object v5, v5, v6

    invoke-direct {v3, v4, v5}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v2

    goto :goto_0

    .line 41
    :cond_1
    move-object v2, v1

    array-length v2, v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    .line 42
    new-instance v2, Ljava/util/Locale;

    move-object v8, v2

    move-object v2, v8

    move-object v3, v8

    move-object v4, v1

    const/4 v5, 0x0

    aget-object v4, v4, v5

    invoke-direct {v3, v4}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    move-object v0, v2

    goto :goto_0

    .line 44
    .line 57
    :cond_2
    :goto_1
    new-instance v2, Ljava/lang/IllegalArgumentException;

    move-object v8, v2

    move-object v2, v8

    move-object v3, v8

    new-instance v4, Ljava/lang/StringBuilder;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Can not parse language tag: ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v5, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 44
    .end local v1    # "args":[Ljava/lang/String;
    :cond_3
    move-object v2, v0

    const-string/jumbo v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 45
    move-object v2, v0

    const-string/jumbo v3, "_"

    const/4 v4, -0x1

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v2

    move-object v1, v2

    .line 46
    .restart local v1    # "args":[Ljava/lang/String;
    move-object v2, v1

    array-length v2, v2

    const/4 v3, 0x2

    if-le v2, v3, :cond_4

    .line 47
    new-instance v2, Ljava/util/Locale;

    move-object v8, v2

    move-object v2, v8

    move-object v3, v8

    move-object v4, v1

    const/4 v5, 0x0

    aget-object v4, v4, v5

    move-object v5, v1

    const/4 v6, 0x1

    aget-object v5, v5, v6

    move-object v6, v1

    const/4 v7, 0x2

    aget-object v6, v6, v7

    invoke-direct {v3, v4, v5, v6}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v2

    goto/16 :goto_0

    .line 48
    :cond_4
    move-object v2, v1

    array-length v2, v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_5

    .line 49
    new-instance v2, Ljava/util/Locale;

    move-object v8, v2

    move-object v2, v8

    move-object v3, v8

    move-object v4, v1

    const/4 v5, 0x0

    aget-object v4, v4, v5

    move-object v5, v1

    const/4 v6, 0x1

    aget-object v5, v5, v6

    invoke-direct {v3, v4, v5}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v2

    goto/16 :goto_0

    .line 50
    :cond_5
    move-object v2, v1

    array-length v2, v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_6

    .line 51
    new-instance v2, Ljava/util/Locale;

    move-object v8, v2

    move-object v2, v8

    move-object v3, v8

    move-object v4, v1

    const/4 v5, 0x0

    aget-object v4, v4, v5

    invoke-direct {v3, v4}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    move-object v0, v2

    goto/16 :goto_0

    .line 53
    :cond_6
    goto/16 :goto_1

    .line 54
    .end local v1    # "args":[Ljava/lang/String;
    :cond_7
    new-instance v2, Ljava/util/Locale;

    move-object v8, v2

    move-object v2, v8

    move-object v3, v8

    move-object v4, v0

    invoke-direct {v3, v4}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    move-object v0, v2

    goto/16 :goto_0
.end method

.method static toLanguageTag(Ljava/util/Locale;)Ljava/lang/String;
    .locals 6

    .prologue
    .line 62
    move-object v0, p0

    .local v0, "locale":Ljava/util/Locale;
    new-instance v3, Ljava/lang/StringBuilder;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object v1, v3

    .line 63
    .local v1, "buf":Ljava/lang/StringBuilder;
    move-object v3, v1

    move-object v4, v0

    invoke-virtual {v4}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 64
    move-object v3, v0

    invoke-virtual {v3}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v3

    move-object v2, v3

    .line 65
    .local v2, "country":Ljava/lang/String;
    move-object v3, v2

    if-eqz v3, :cond_0

    move-object v3, v2

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 66
    move-object v3, v1

    const-string/jumbo v4, "-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 67
    move-object v3, v1

    move-object v4, v0

    invoke-virtual {v4}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 70
    :cond_0
    move-object v3, v1

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "locale":Ljava/util/Locale;
    return-object v0
.end method

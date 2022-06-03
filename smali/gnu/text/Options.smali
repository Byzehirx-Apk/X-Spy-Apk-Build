.class public Lgnu/text/Options;
.super Ljava/lang/Object;
.source "Options.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgnu/text/Options$OptionInfo;
    }
.end annotation


# static fields
.field public static final BOOLEAN_OPTION:I = 0x1

.field public static final STRING_OPTION:I = 0x2

.field public static final UNKNOWN:Ljava/lang/String; = "unknown option name"


# instance fields
.field first:Lgnu/text/Options$OptionInfo;

.field infoTable:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lgnu/text/Options$OptionInfo;",
            ">;"
        }
    .end annotation
.end field

.field last:Lgnu/text/Options$OptionInfo;

.field previous:Lgnu/text/Options;

.field valueTable:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 24
    move-object v0, p0

    .local v0, "this":Lgnu/text/Options;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 25
    return-void
.end method

.method public constructor <init>(Lgnu/text/Options;)V
    .locals 4

    .prologue
    .line 28
    move-object v0, p0

    .local v0, "this":Lgnu/text/Options;
    move-object v1, p1

    .local v1, "previous":Lgnu/text/Options;
    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 29
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lgnu/text/Options;->previous:Lgnu/text/Options;

    .line 30
    return-void
.end method

.method private error(Ljava/lang/String;Lgnu/text/SourceMessages;)V
    .locals 7

    .prologue
    .line 91
    move-object v0, p0

    .local v0, "this":Lgnu/text/Options;
    move-object v1, p1

    .local v1, "message":Ljava/lang/String;
    move-object v2, p2

    .local v2, "messages":Lgnu/text/SourceMessages;
    move-object v3, v2

    if-nez v3, :cond_0

    .line 92
    new-instance v3, Ljava/lang/RuntimeException;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v1

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 94
    :cond_0
    move-object v3, v2

    const/16 v4, 0x65

    move-object v5, v1

    invoke-virtual {v3, v4, v5}, Lgnu/text/SourceMessages;->error(CLjava/lang/String;)V

    .line 95
    return-void
.end method

.method static valueOf(Lgnu/text/Options$OptionInfo;Ljava/lang/String;)Ljava/lang/Object;
    .locals 4

    .prologue
    .line 71
    move-object v0, p0

    .local v0, "info":Lgnu/text/Options$OptionInfo;
    move-object v1, p1

    .local v1, "argument":Ljava/lang/String;
    move-object v2, v0

    iget v2, v2, Lgnu/text/Options$OptionInfo;->kind:I

    const/4 v3, 0x1

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_4

    .line 73
    move-object v2, v1

    if-eqz v2, :cond_0

    move-object v2, v1

    const-string/jumbo v3, "1"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    move-object v2, v1

    const-string/jumbo v3, "on"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    move-object v2, v1

    const-string/jumbo v3, "yes"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    move-object v2, v1

    const-string/jumbo v3, "true"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 78
    :cond_0
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    move-object v0, v2

    .line 86
    .end local v0    # "info":Lgnu/text/Options$OptionInfo;
    :goto_0
    return-object v0

    .line 79
    .restart local v0    # "info":Lgnu/text/Options$OptionInfo;
    :cond_1
    move-object v2, v1

    const-string/jumbo v3, "0"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    move-object v2, v1

    const-string/jumbo v3, "off"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    move-object v2, v1

    const-string/jumbo v3, "no"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    move-object v2, v1

    const-string/jumbo v3, "false"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 83
    :cond_2
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    move-object v0, v2

    goto :goto_0

    .line 84
    :cond_3
    const/4 v2, 0x0

    move-object v0, v2

    goto :goto_0

    .line 86
    :cond_4
    move-object v2, v1

    move-object v0, v2

    goto :goto_0
.end method


# virtual methods
.method public add(Ljava/lang/String;ILjava/lang/Object;Ljava/lang/String;)Lgnu/text/Options$OptionInfo;
    .locals 11

    .prologue
    .line 51
    move-object v0, p0

    .local v0, "this":Lgnu/text/Options;
    move-object v1, p1

    .local v1, "key":Ljava/lang/String;
    move v2, p2

    .local v2, "kind":I
    move-object v3, p3

    .local v3, "defaultValue":Ljava/lang/Object;
    move-object v4, p4

    .local v4, "documentation":Ljava/lang/String;
    move-object v6, v0

    iget-object v6, v6, Lgnu/text/Options;->infoTable:Ljava/util/HashMap;

    if-nez v6, :cond_1

    .line 52
    move-object v6, v0

    new-instance v7, Ljava/util/HashMap;

    move-object v10, v7

    move-object v7, v10

    move-object v8, v10

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    iput-object v7, v6, Lgnu/text/Options;->infoTable:Ljava/util/HashMap;

    .line 55
    :cond_0
    new-instance v6, Lgnu/text/Options$OptionInfo;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    invoke-direct {v7}, Lgnu/text/Options$OptionInfo;-><init>()V

    move-object v5, v6

    .line 56
    .local v5, "info":Lgnu/text/Options$OptionInfo;
    move-object v6, v5

    move-object v7, v1

    iput-object v7, v6, Lgnu/text/Options$OptionInfo;->key:Ljava/lang/String;

    .line 57
    move-object v6, v5

    move v7, v2

    iput v7, v6, Lgnu/text/Options$OptionInfo;->kind:I

    .line 58
    move-object v6, v5

    move-object v7, v3

    iput-object v7, v6, Lgnu/text/Options$OptionInfo;->defaultValue:Ljava/lang/Object;

    .line 59
    move-object v6, v5

    move-object v7, v4

    iput-object v7, v6, Lgnu/text/Options$OptionInfo;->documentation:Ljava/lang/String;

    .line 60
    move-object v6, v0

    iget-object v6, v6, Lgnu/text/Options;->first:Lgnu/text/Options$OptionInfo;

    if-nez v6, :cond_2

    .line 61
    move-object v6, v0

    move-object v7, v5

    iput-object v7, v6, Lgnu/text/Options;->first:Lgnu/text/Options$OptionInfo;

    .line 64
    :goto_0
    move-object v6, v0

    move-object v7, v5

    iput-object v7, v6, Lgnu/text/Options;->last:Lgnu/text/Options$OptionInfo;

    .line 65
    move-object v6, v0

    iget-object v6, v6, Lgnu/text/Options;->infoTable:Ljava/util/HashMap;

    move-object v7, v1

    move-object v8, v5

    invoke-virtual {v6, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .line 66
    move-object v6, v5

    move-object v0, v6

    .end local v0    # "this":Lgnu/text/Options;
    return-object v0

    .line 53
    .end local v5    # "info":Lgnu/text/Options$OptionInfo;
    .restart local v0    # "this":Lgnu/text/Options;
    :cond_1
    move-object v6, v0

    iget-object v6, v6, Lgnu/text/Options;->infoTable:Ljava/util/HashMap;

    move-object v7, v1

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 54
    new-instance v6, Ljava/lang/RuntimeException;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    new-instance v8, Ljava/lang/StringBuilder;

    move-object v10, v8

    move-object v8, v10

    move-object v9, v10

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "duplicate option key: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object v9, v1

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 63
    .restart local v5    # "info":Lgnu/text/Options$OptionInfo;
    :cond_2
    move-object v6, v0

    iget-object v6, v6, Lgnu/text/Options;->last:Lgnu/text/Options$OptionInfo;

    move-object v7, v5

    iput-object v7, v6, Lgnu/text/Options$OptionInfo;->next:Lgnu/text/Options$OptionInfo;

    goto :goto_0
.end method

.method public add(Ljava/lang/String;ILjava/lang/String;)Lgnu/text/Options$OptionInfo;
    .locals 9

    .prologue
    .line 45
    move-object v0, p0

    .local v0, "this":Lgnu/text/Options;
    move-object v1, p1

    .local v1, "key":Ljava/lang/String;
    move v2, p2

    .local v2, "kind":I
    move-object v3, p3

    .local v3, "documentation":Ljava/lang/String;
    move-object v4, v0

    move-object v5, v1

    move v6, v2

    const/4 v7, 0x0

    move-object v8, v3

    invoke-virtual {v4, v5, v6, v7, v8}, Lgnu/text/Options;->add(Ljava/lang/String;ILjava/lang/Object;Ljava/lang/String;)Lgnu/text/Options$OptionInfo;

    move-result-object v4

    move-object v0, v4

    .end local v0    # "this":Lgnu/text/Options;
    return-object v0
.end method

.method public get(Lgnu/text/Options$OptionInfo;)Ljava/lang/Object;
    .locals 5

    .prologue
    .line 211
    move-object v0, p0

    .local v0, "this":Lgnu/text/Options;
    move-object v1, p1

    .local v1, "key":Lgnu/text/Options$OptionInfo;
    move-object v2, v0

    move-object v3, v1

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lgnu/text/Options;->get(Lgnu/text/Options$OptionInfo;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Lgnu/text/Options;
    return-object v0
.end method

.method public get(Lgnu/text/Options$OptionInfo;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    .prologue
    .line 186
    move-object v0, p0

    .local v0, "this":Lgnu/text/Options;
    move-object v1, p1

    .local v1, "key":Lgnu/text/Options$OptionInfo;
    move-object v2, p2

    .local v2, "defaultValue":Ljava/lang/Object;
    move-object v6, v0

    move-object v3, v6

    .line 187
    .local v3, "options":Lgnu/text/Options;
    :goto_0
    move-object v6, v3

    if-eqz v6, :cond_4

    .line 189
    move-object v6, v1

    move-object v4, v6

    .line 191
    .local v4, "info":Lgnu/text/Options$OptionInfo;
    :goto_1
    move-object v6, v3

    iget-object v6, v6, Lgnu/text/Options;->valueTable:Ljava/util/HashMap;

    if-nez v6, :cond_0

    const/4 v6, 0x0

    :goto_2
    move-object v5, v6

    .line 193
    .local v5, "val":Ljava/lang/Object;
    move-object v6, v5

    if-eqz v6, :cond_1

    .line 194
    move-object v6, v5

    move-object v0, v6

    .line 206
    .end local v0    # "this":Lgnu/text/Options;
    .end local v4    # "info":Lgnu/text/Options$OptionInfo;
    .end local v5    # "val":Ljava/lang/Object;
    :goto_3
    return-object v0

    .line 191
    .restart local v0    # "this":Lgnu/text/Options;
    .restart local v4    # "info":Lgnu/text/Options$OptionInfo;
    :cond_0
    move-object v6, v3

    iget-object v6, v6, Lgnu/text/Options;->valueTable:Ljava/util/HashMap;

    move-object v7, v4

    iget-object v7, v7, Lgnu/text/Options$OptionInfo;->key:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    goto :goto_2

    .line 195
    .restart local v5    # "val":Ljava/lang/Object;
    :cond_1
    move-object v6, v4

    iget-object v6, v6, Lgnu/text/Options$OptionInfo;->defaultValue:Ljava/lang/Object;

    instance-of v6, v6, Lgnu/text/Options$OptionInfo;

    if-eqz v6, :cond_2

    .line 196
    move-object v6, v4

    iget-object v6, v6, Lgnu/text/Options$OptionInfo;->defaultValue:Ljava/lang/Object;

    check-cast v6, Lgnu/text/Options$OptionInfo;

    move-object v4, v6

    .line 203
    goto :goto_1

    .line 199
    :cond_2
    move-object v6, v4

    iget-object v6, v6, Lgnu/text/Options$OptionInfo;->defaultValue:Ljava/lang/Object;

    if-eqz v6, :cond_3

    .line 200
    move-object v6, v4

    iget-object v6, v6, Lgnu/text/Options$OptionInfo;->defaultValue:Ljava/lang/Object;

    move-object v2, v6

    .line 204
    :cond_3
    move-object v6, v3

    iget-object v6, v6, Lgnu/text/Options;->previous:Lgnu/text/Options;

    move-object v3, v6

    goto :goto_0

    .line 206
    .end local v4    # "info":Lgnu/text/Options$OptionInfo;
    .end local v5    # "val":Ljava/lang/Object;
    :cond_4
    move-object v6, v2

    move-object v0, v6

    goto :goto_3
.end method

.method public get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    .prologue
    .line 178
    move-object v0, p0

    .local v0, "this":Lgnu/text/Options;
    move-object v1, p1

    .local v1, "key":Ljava/lang/String;
    move-object v2, p2

    .local v2, "defaultValue":Ljava/lang/Object;
    move-object v4, v0

    move-object v5, v1

    invoke-virtual {v4, v5}, Lgnu/text/Options;->getInfo(Ljava/lang/String;)Lgnu/text/Options$OptionInfo;

    move-result-object v4

    move-object v3, v4

    .line 179
    .local v3, "info":Lgnu/text/Options$OptionInfo;
    move-object v4, v3

    if-nez v4, :cond_0

    .line 180
    new-instance v4, Ljava/lang/RuntimeException;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    new-instance v6, Ljava/lang/StringBuilder;

    move-object v8, v6

    move-object v6, v8

    move-object v7, v8

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "invalid option key: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v7, v1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 181
    :cond_0
    move-object v4, v0

    move-object v5, v3

    move-object v6, v2

    invoke-virtual {v4, v5, v6}, Lgnu/text/Options;->get(Lgnu/text/Options$OptionInfo;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    .end local v0    # "this":Lgnu/text/Options;
    return-object v0
.end method

.method public getBoolean(Lgnu/text/Options$OptionInfo;)Z
    .locals 6

    .prologue
    .line 243
    move-object v0, p0

    .local v0, "this":Lgnu/text/Options;
    move-object v1, p1

    .local v1, "key":Lgnu/text/Options$OptionInfo;
    move-object v3, v0

    move-object v4, v1

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lgnu/text/Options;->get(Lgnu/text/Options$OptionInfo;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v2, v3

    .line 244
    .local v2, "value":Ljava/lang/Object;
    move-object v3, v2

    if-nez v3, :cond_0

    const/4 v3, 0x0

    :goto_0
    move v0, v3

    .end local v0    # "this":Lgnu/text/Options;
    return v0

    .restart local v0    # "this":Lgnu/text/Options;
    :cond_0
    move-object v3, v2

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    goto :goto_0
.end method

.method public getBoolean(Lgnu/text/Options$OptionInfo;Z)Z
    .locals 7

    .prologue
    .line 237
    move-object v0, p0

    .local v0, "this":Lgnu/text/Options;
    move-object v1, p1

    .local v1, "key":Lgnu/text/Options$OptionInfo;
    move v2, p2

    .local v2, "defaultValue":Z
    move v4, v2

    if-eqz v4, :cond_0

    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    :goto_0
    move-object v3, v4

    .line 238
    .local v3, "defaultObject":Ljava/lang/Boolean;
    move-object v4, v0

    move-object v5, v1

    move-object v6, v3

    invoke-virtual {v4, v5, v6}, Lgnu/text/Options;->get(Lgnu/text/Options$OptionInfo;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    move v0, v4

    .end local v0    # "this":Lgnu/text/Options;
    return v0

    .line 237
    .end local v3    # "defaultObject":Ljava/lang/Boolean;
    .restart local v0    # "this":Lgnu/text/Options;
    :cond_0
    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_0
.end method

.method public getBoolean(Ljava/lang/String;)Z
    .locals 5

    .prologue
    .line 226
    move-object v0, p0

    .local v0, "this":Lgnu/text/Options;
    move-object v1, p1

    .local v1, "key":Ljava/lang/String;
    move-object v2, v0

    move-object v3, v1

    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v2, v3, v4}, Lgnu/text/Options;->get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    move v0, v2

    .end local v0    # "this":Lgnu/text/Options;
    return v0
.end method

.method public getBoolean(Ljava/lang/String;Z)Z
    .locals 7

    .prologue
    .line 231
    move-object v0, p0

    .local v0, "this":Lgnu/text/Options;
    move-object v1, p1

    .local v1, "key":Ljava/lang/String;
    move v2, p2

    .local v2, "defaultValue":Z
    move v4, v2

    if-eqz v4, :cond_0

    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    :goto_0
    move-object v3, v4

    .line 232
    .local v3, "defaultObject":Ljava/lang/Boolean;
    move-object v4, v0

    move-object v5, v1

    move-object v6, v3

    invoke-virtual {v4, v5, v6}, Lgnu/text/Options;->get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    move v0, v4

    .end local v0    # "this":Lgnu/text/Options;
    return v0

    .line 231
    .end local v3    # "defaultObject":Ljava/lang/Boolean;
    .restart local v0    # "this":Lgnu/text/Options;
    :cond_0
    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_0
.end method

.method public getDoc(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .prologue
    .line 299
    move-object v0, p0

    .local v0, "this":Lgnu/text/Options;
    move-object v1, p1

    .local v1, "key":Ljava/lang/String;
    move-object v3, v0

    move-object v4, v1

    invoke-virtual {v3, v4}, Lgnu/text/Options;->getInfo(Ljava/lang/String;)Lgnu/text/Options$OptionInfo;

    move-result-object v3

    move-object v2, v3

    .line 300
    .local v2, "info":Lgnu/text/Options$OptionInfo;
    move-object v3, v1

    if-nez v3, :cond_0

    .line 301
    const/4 v3, 0x0

    move-object v0, v3

    .line 302
    .end local v0    # "this":Lgnu/text/Options;
    :goto_0
    return-object v0

    .restart local v0    # "this":Lgnu/text/Options;
    :cond_0
    move-object v3, v2

    iget-object v3, v3, Lgnu/text/Options$OptionInfo;->documentation:Ljava/lang/String;

    move-object v0, v3

    goto :goto_0
.end method

.method public getInfo(Ljava/lang/String;)Lgnu/text/Options$OptionInfo;
    .locals 5

    .prologue
    .line 166
    move-object v0, p0

    .local v0, "this":Lgnu/text/Options;
    move-object v1, p1

    .local v1, "key":Ljava/lang/String;
    move-object v3, v0

    iget-object v3, v3, Lgnu/text/Options;->infoTable:Ljava/util/HashMap;

    if-nez v3, :cond_1

    const/4 v3, 0x0

    :goto_0
    move-object v2, v3

    .line 167
    .local v2, "info":Lgnu/text/Options$OptionInfo;
    move-object v3, v2

    if-nez v3, :cond_0

    move-object v3, v0

    iget-object v3, v3, Lgnu/text/Options;->previous:Lgnu/text/Options;

    if-eqz v3, :cond_0

    .line 168
    move-object v3, v0

    iget-object v3, v3, Lgnu/text/Options;->previous:Lgnu/text/Options;

    move-object v4, v1

    invoke-virtual {v3, v4}, Lgnu/text/Options;->getInfo(Ljava/lang/String;)Lgnu/text/Options$OptionInfo;

    move-result-object v3

    move-object v2, v3

    .line 169
    :cond_0
    move-object v3, v2

    check-cast v3, Lgnu/text/Options$OptionInfo;

    move-object v0, v3

    .end local v0    # "this":Lgnu/text/Options;
    return-object v0

    .line 166
    .end local v2    # "info":Lgnu/text/Options$OptionInfo;
    .restart local v0    # "this":Lgnu/text/Options;
    :cond_1
    move-object v3, v0

    iget-object v3, v3, Lgnu/text/Options;->infoTable:Ljava/util/HashMap;

    move-object v4, v1

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lgnu/text/Options$OptionInfo;

    goto :goto_0
.end method

.method public getLocal(Ljava/lang/String;)Ljava/lang/Object;
    .locals 4

    .prologue
    .line 221
    move-object v0, p0

    .local v0, "this":Lgnu/text/Options;
    move-object v1, p1

    .local v1, "key":Ljava/lang/String;
    move-object v2, v0

    iget-object v2, v2, Lgnu/text/Options;->valueTable:Ljava/util/HashMap;

    if-nez v2, :cond_0

    const/4 v2, 0x0

    :goto_0
    move-object v0, v2

    .end local v0    # "this":Lgnu/text/Options;
    return-object v0

    .restart local v0    # "this":Lgnu/text/Options;
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Lgnu/text/Options;->valueTable:Ljava/util/HashMap;

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_0
.end method

.method public keys()Ljava/util/ArrayList;
    .locals 8
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
    .line 282
    move-object v0, p0

    .local v0, "this":Lgnu/text/Options;
    new-instance v5, Ljava/util/ArrayList;

    move-object v7, v5

    move-object v5, v7

    move-object v6, v7

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    move-object v1, v5

    .line 283
    .local v1, "allKeys":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    move-object v5, v0

    move-object v2, v5

    .local v2, "options":Lgnu/text/Options;
    :goto_0
    move-object v5, v2

    if-eqz v5, :cond_2

    .line 285
    move-object v5, v2

    iget-object v5, v5, Lgnu/text/Options;->infoTable:Ljava/util/HashMap;

    if-eqz v5, :cond_1

    .line 287
    move-object v5, v2

    iget-object v5, v5, Lgnu/text/Options;->infoTable:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move-object v3, v5

    .local v3, "i$":Ljava/util/Iterator;
    :goto_1
    move-object v5, v3

    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    move-object v5, v3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    move-object v4, v5

    .line 289
    .local v4, "k":Ljava/lang/String;
    move-object v5, v1

    move-object v6, v4

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 290
    move-object v5, v1

    move-object v6, v4

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v5

    .line 291
    :cond_0
    goto :goto_1

    .line 283
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v4    # "k":Ljava/lang/String;
    :cond_1
    move-object v5, v2

    iget-object v5, v5, Lgnu/text/Options;->previous:Lgnu/text/Options;

    move-object v2, v5

    goto :goto_0

    .line 294
    :cond_2
    move-object v5, v1

    move-object v0, v5

    .end local v0    # "this":Lgnu/text/Options;
    return-object v0
.end method

.method public popOptionValues(Ljava/util/Vector;)V
    .locals 9

    .prologue
    .line 269
    move-object v0, p0

    .local v0, "this":Lgnu/text/Options;
    move-object v1, p1

    .local v1, "options":Ljava/util/Vector;
    move-object v5, v1

    invoke-virtual {v5}, Ljava/util/Vector;->size()I

    move-result v5

    move v2, v5

    .local v2, "i":I
    :goto_0
    add-int/lit8 v2, v2, -0x3

    move v5, v2

    if-ltz v5, :cond_0

    .line 271
    move-object v5, v1

    move v6, v2

    invoke-virtual {v5, v6}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    move-object v3, v5

    .line 272
    .local v3, "key":Ljava/lang/String;
    move-object v5, v1

    move v6, v2

    const/4 v7, 0x1

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {v5, v6}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v5

    move-object v4, v5

    .line 273
    .local v4, "oldValue":Ljava/lang/Object;
    move-object v5, v1

    const/4 v6, 0x0

    move v7, v2

    const/4 v8, 0x1

    add-int/lit8 v7, v7, 0x1

    invoke-virtual {v5, v6, v7}, Ljava/util/Vector;->setElementAt(Ljava/lang/Object;I)V

    .line 274
    move-object v5, v0

    move-object v6, v3

    move-object v7, v4

    invoke-virtual {v5, v6, v7}, Lgnu/text/Options;->reset(Ljava/lang/String;Ljava/lang/Object;)V

    .line 275
    goto :goto_0

    .line 276
    .end local v3    # "key":Ljava/lang/String;
    .end local v4    # "oldValue":Ljava/lang/Object;
    :cond_0
    return-void
.end method

.method public pushOptionValues(Ljava/util/Vector;)V
    .locals 10

    .prologue
    .line 255
    move-object v0, p0

    .local v0, "this":Lgnu/text/Options;
    move-object v1, p1

    .local v1, "options":Ljava/util/Vector;
    move-object v6, v1

    invoke-virtual {v6}, Ljava/util/Vector;->size()I

    move-result v6

    move v2, v6

    .line 256
    .local v2, "len":I
    const/4 v6, 0x0

    move v3, v6

    .local v3, "i":I
    :goto_0
    move v6, v3

    move v7, v2

    if-ge v6, v7, :cond_0

    .line 258
    move-object v6, v1

    move v7, v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v6, v7}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    move-object v4, v6

    .line 259
    .local v4, "key":Ljava/lang/String;
    move-object v6, v1

    move v7, v3

    invoke-virtual {v6, v7}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v6

    move-object v5, v6

    .line 260
    .local v5, "newValue":Ljava/lang/Object;
    move-object v6, v1

    move-object v7, v5

    move v8, v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v6, v7, v8}, Ljava/util/Vector;->setElementAt(Ljava/lang/Object;I)V

    .line 261
    move-object v6, v0

    move-object v7, v4

    move-object v8, v1

    move v9, v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v8, v9}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lgnu/text/Options;->set(Ljava/lang/String;Ljava/lang/Object;)V

    .line 262
    goto :goto_0

    .line 263
    .end local v4    # "key":Ljava/lang/String;
    .end local v5    # "newValue":Ljava/lang/Object;
    :cond_0
    return-void
.end method

.method public reset(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 7

    .prologue
    .line 134
    move-object v0, p0

    .local v0, "this":Lgnu/text/Options;
    move-object v1, p1

    .local v1, "key":Ljava/lang/String;
    move-object v2, p2

    .local v2, "oldValue":Ljava/lang/Object;
    move-object v3, v0

    iget-object v3, v3, Lgnu/text/Options;->valueTable:Ljava/util/HashMap;

    if-nez v3, :cond_0

    .line 135
    move-object v3, v0

    new-instance v4, Ljava/util/HashMap;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    iput-object v4, v3, Lgnu/text/Options;->valueTable:Ljava/util/HashMap;

    .line 136
    :cond_0
    move-object v3, v2

    if-nez v3, :cond_1

    .line 137
    move-object v3, v0

    iget-object v3, v3, Lgnu/text/Options;->valueTable:Ljava/util/HashMap;

    move-object v4, v1

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 140
    :goto_0
    return-void

    .line 139
    :cond_1
    move-object v3, v0

    iget-object v3, v3, Lgnu/text/Options;->valueTable:Ljava/util/HashMap;

    move-object v4, v1

    move-object v5, v2

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    goto :goto_0
.end method

.method public set(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 9

    .prologue
    .line 149
    move-object v0, p0

    .local v0, "this":Lgnu/text/Options;
    move-object v1, p1

    .local v1, "key":Ljava/lang/String;
    move-object v2, p2

    .local v2, "argument":Ljava/lang/String;
    move-object v5, v0

    move-object v6, v1

    invoke-virtual {v5, v6}, Lgnu/text/Options;->getInfo(Ljava/lang/String;)Lgnu/text/Options$OptionInfo;

    move-result-object v5

    move-object v3, v5

    .line 150
    .local v3, "info":Lgnu/text/Options$OptionInfo;
    move-object v5, v3

    if-nez v5, :cond_0

    .line 151
    const-string/jumbo v5, "unknown option name"

    move-object v0, v5

    .line 161
    .end local v0    # "this":Lgnu/text/Options;
    :goto_0
    return-object v0

    .line 152
    .restart local v0    # "this":Lgnu/text/Options;
    :cond_0
    move-object v5, v3

    move-object v6, v2

    invoke-static {v5, v6}, Lgnu/text/Options;->valueOf(Lgnu/text/Options$OptionInfo;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    move-object v4, v5

    .line 153
    .local v4, "value":Ljava/lang/Object;
    move-object v5, v4

    if-nez v5, :cond_1

    .line 155
    move-object v5, v3

    iget v5, v5, Lgnu/text/Options$OptionInfo;->kind:I

    const/4 v6, 0x1

    and-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_1

    .line 156
    new-instance v5, Ljava/lang/StringBuilder;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "value of option "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v6, v1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " must be yes/no/true/false/on/off/1/0"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object v0, v5

    goto :goto_0

    .line 158
    :cond_1
    move-object v5, v0

    iget-object v5, v5, Lgnu/text/Options;->valueTable:Ljava/util/HashMap;

    if-nez v5, :cond_2

    .line 159
    move-object v5, v0

    new-instance v6, Ljava/util/HashMap;

    move-object v8, v6

    move-object v6, v8

    move-object v7, v8

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    iput-object v6, v5, Lgnu/text/Options;->valueTable:Ljava/util/HashMap;

    .line 160
    :cond_2
    move-object v5, v0

    iget-object v5, v5, Lgnu/text/Options;->valueTable:Ljava/util/HashMap;

    move-object v6, v1

    move-object v7, v4

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 161
    const/4 v5, 0x0

    move-object v0, v5

    goto :goto_0
.end method

.method public set(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 7

    .prologue
    .line 100
    move-object v0, p0

    .local v0, "this":Lgnu/text/Options;
    move-object v1, p1

    .local v1, "key":Ljava/lang/String;
    move-object v2, p2

    .local v2, "value":Ljava/lang/Object;
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v5, v6}, Lgnu/text/Options;->set(Ljava/lang/String;Ljava/lang/Object;Lgnu/text/SourceMessages;)V

    .line 101
    return-void
.end method

.method public set(Ljava/lang/String;Ljava/lang/Object;Lgnu/text/SourceMessages;)V
    .locals 9

    .prologue
    .line 106
    move-object v0, p0

    .local v0, "this":Lgnu/text/Options;
    move-object v1, p1

    .local v1, "key":Ljava/lang/String;
    move-object v2, p2

    .local v2, "value":Ljava/lang/Object;
    move-object v3, p3

    .local v3, "messages":Lgnu/text/SourceMessages;
    move-object v5, v0

    move-object v6, v1

    invoke-virtual {v5, v6}, Lgnu/text/Options;->getInfo(Ljava/lang/String;)Lgnu/text/Options$OptionInfo;

    move-result-object v5

    move-object v4, v5

    .line 107
    .local v4, "info":Lgnu/text/Options$OptionInfo;
    move-object v5, v4

    if-nez v5, :cond_0

    .line 109
    move-object v5, v0

    new-instance v6, Ljava/lang/StringBuilder;

    move-object v8, v6

    move-object v6, v8

    move-object v7, v8

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "invalid option key: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v7, v1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object v7, v3

    invoke-direct {v5, v6, v7}, Lgnu/text/Options;->error(Ljava/lang/String;Lgnu/text/SourceMessages;)V

    .line 110
    .line 129
    .end local v2    # "value":Ljava/lang/Object;
    :goto_0
    return-void

    .line 112
    .restart local v2    # "value":Ljava/lang/Object;
    :cond_0
    move-object v5, v4

    iget v5, v5, Lgnu/text/Options$OptionInfo;->kind:I

    const/4 v6, 0x1

    and-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_2

    .line 114
    move-object v5, v2

    instance-of v5, v5, Ljava/lang/String;

    if-eqz v5, :cond_1

    .line 115
    move-object v5, v4

    move-object v6, v2

    check-cast v6, Ljava/lang/String;

    invoke-static {v5, v6}, Lgnu/text/Options;->valueOf(Lgnu/text/Options$OptionInfo;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    move-object v2, v5

    .line 116
    :cond_1
    move-object v5, v2

    instance-of v5, v5, Ljava/lang/Boolean;

    if-nez v5, :cond_3

    .line 118
    move-object v5, v0

    new-instance v6, Ljava/lang/StringBuilder;

    move-object v8, v6

    move-object v6, v8

    move-object v7, v8

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "value for option "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v7, v1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " must be boolean or yes/no/true/false/on/off/1/0"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object v7, v3

    invoke-direct {v5, v6, v7}, Lgnu/text/Options;->error(Ljava/lang/String;Lgnu/text/SourceMessages;)V

    .line 121
    goto :goto_0

    .line 124
    :cond_2
    move-object v5, v2

    if-nez v5, :cond_3

    .line 125
    const-string/jumbo v5, ""

    move-object v2, v5

    .line 126
    .end local v2    # "value":Ljava/lang/Object;
    :cond_3
    move-object v5, v0

    iget-object v5, v5, Lgnu/text/Options;->valueTable:Ljava/util/HashMap;

    if-nez v5, :cond_4

    .line 127
    move-object v5, v0

    new-instance v6, Ljava/util/HashMap;

    move-object v8, v6

    move-object v6, v8

    move-object v7, v8

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    iput-object v6, v5, Lgnu/text/Options;->valueTable:Ljava/util/HashMap;

    .line 128
    :cond_4
    move-object v5, v0

    iget-object v5, v5, Lgnu/text/Options;->valueTable:Ljava/util/HashMap;

    move-object v6, v1

    move-object v7, v2

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 129
    goto :goto_0
.end method

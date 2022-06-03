.class public final Landroidx/core/app/RemoteInput$Builder;
.super Ljava/lang/Object;
.source "RemoteInput.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/app/RemoteInput;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private mAllowFreeFormTextInput:Z

.field private final mAllowedDataTypes:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mChoices:[Ljava/lang/CharSequence;

.field private final mExtras:Landroid/os/Bundle;

.field private mLabel:Ljava/lang/CharSequence;

.field private final mResultKey:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 6
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 140
    move-object v0, p0

    .local v0, "this":Landroidx/core/app/RemoteInput$Builder;
    move-object v1, p1

    .local v1, "resultKey":Ljava/lang/String;
    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 129
    move-object v2, v0

    new-instance v3, Ljava/util/HashSet;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    iput-object v3, v2, Landroidx/core/app/RemoteInput$Builder;->mAllowedDataTypes:Ljava/util/Set;

    .line 130
    move-object v2, v0

    new-instance v3, Landroid/os/Bundle;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    iput-object v3, v2, Landroidx/core/app/RemoteInput$Builder;->mExtras:Landroid/os/Bundle;

    .line 133
    move-object v2, v0

    const/4 v3, 0x1

    iput-boolean v3, v2, Landroidx/core/app/RemoteInput$Builder;->mAllowFreeFormTextInput:Z

    .line 141
    move-object v2, v1

    if-nez v2, :cond_0

    .line 142
    new-instance v2, Ljava/lang/IllegalArgumentException;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const-string/jumbo v4, "Result key can\'t be null"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 144
    :cond_0
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroidx/core/app/RemoteInput$Builder;->mResultKey:Ljava/lang/String;

    .line 145
    return-void
.end method


# virtual methods
.method public addExtras(Landroid/os/Bundle;)Landroidx/core/app/RemoteInput$Builder;
    .locals 4
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .prologue
    .line 222
    move-object v0, p0

    .local v0, "this":Landroidx/core/app/RemoteInput$Builder;
    move-object v1, p1

    .local v1, "extras":Landroid/os/Bundle;
    move-object v2, v1

    if-eqz v2, :cond_0

    .line 223
    move-object v2, v0

    iget-object v2, v2, Landroidx/core/app/RemoteInput$Builder;->mExtras:Landroid/os/Bundle;

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 225
    :cond_0
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Landroidx/core/app/RemoteInput$Builder;
    return-object v0
.end method

.method public build()Landroidx/core/app/RemoteInput;
    .locals 10
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .prologue
    .line 244
    move-object v0, p0

    .local v0, "this":Landroidx/core/app/RemoteInput$Builder;
    new-instance v1, Landroidx/core/app/RemoteInput;

    move-object v9, v1

    move-object v1, v9

    move-object v2, v9

    move-object v3, v0

    iget-object v3, v3, Landroidx/core/app/RemoteInput$Builder;->mResultKey:Ljava/lang/String;

    move-object v4, v0

    iget-object v4, v4, Landroidx/core/app/RemoteInput$Builder;->mLabel:Ljava/lang/CharSequence;

    move-object v5, v0

    iget-object v5, v5, Landroidx/core/app/RemoteInput$Builder;->mChoices:[Ljava/lang/CharSequence;

    move-object v6, v0

    iget-boolean v6, v6, Landroidx/core/app/RemoteInput$Builder;->mAllowFreeFormTextInput:Z

    move-object v7, v0

    iget-object v7, v7, Landroidx/core/app/RemoteInput$Builder;->mExtras:Landroid/os/Bundle;

    move-object v8, v0

    iget-object v8, v8, Landroidx/core/app/RemoteInput$Builder;->mAllowedDataTypes:Ljava/util/Set;

    invoke-direct/range {v2 .. v8}, Landroidx/core/app/RemoteInput;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;[Ljava/lang/CharSequence;ZLandroid/os/Bundle;Ljava/util/Set;)V

    move-object v0, v1

    .end local v0    # "this":Landroidx/core/app/RemoteInput$Builder;
    return-object v0
.end method

.method public getExtras()Landroid/os/Bundle;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .prologue
    .line 235
    move-object v0, p0

    .local v0, "this":Landroidx/core/app/RemoteInput$Builder;
    move-object v1, v0

    iget-object v1, v1, Landroidx/core/app/RemoteInput$Builder;->mExtras:Landroid/os/Bundle;

    move-object v0, v1

    .end local v0    # "this":Landroidx/core/app/RemoteInput$Builder;
    return-object v0
.end method

.method public setAllowDataType(Ljava/lang/String;Z)Landroidx/core/app/RemoteInput$Builder;
    .locals 5
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .prologue
    .line 189
    move-object v0, p0

    .local v0, "this":Landroidx/core/app/RemoteInput$Builder;
    move-object v1, p1

    .local v1, "mimeType":Ljava/lang/String;
    move v2, p2

    .local v2, "doAllow":Z
    move v3, v2

    if-eqz v3, :cond_0

    .line 190
    move-object v3, v0

    iget-object v3, v3, Landroidx/core/app/RemoteInput$Builder;->mAllowedDataTypes:Ljava/util/Set;

    move-object v4, v1

    invoke-interface {v3, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v3

    .line 194
    :goto_0
    move-object v3, v0

    move-object v0, v3

    .end local v0    # "this":Landroidx/core/app/RemoteInput$Builder;
    return-object v0

    .line 192
    .restart local v0    # "this":Landroidx/core/app/RemoteInput$Builder;
    :cond_0
    move-object v3, v0

    iget-object v3, v3, Landroidx/core/app/RemoteInput$Builder;->mAllowedDataTypes:Ljava/util/Set;

    move-object v4, v1

    invoke-interface {v3, v4}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v3

    goto :goto_0
.end method

.method public setAllowFreeFormInput(Z)Landroidx/core/app/RemoteInput$Builder;
    .locals 4
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .prologue
    .line 209
    move-object v0, p0

    .local v0, "this":Landroidx/core/app/RemoteInput$Builder;
    move v1, p1

    .local v1, "allowFreeFormTextInput":Z
    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Landroidx/core/app/RemoteInput$Builder;->mAllowFreeFormTextInput:Z

    .line 210
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Landroidx/core/app/RemoteInput$Builder;
    return-object v0
.end method

.method public setChoices([Ljava/lang/CharSequence;)Landroidx/core/app/RemoteInput$Builder;
    .locals 4
    .param p1    # [Ljava/lang/CharSequence;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .prologue
    .line 173
    move-object v0, p0

    .local v0, "this":Landroidx/core/app/RemoteInput$Builder;
    move-object v1, p1

    .local v1, "choices":[Ljava/lang/CharSequence;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroidx/core/app/RemoteInput$Builder;->mChoices:[Ljava/lang/CharSequence;

    .line 174
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Landroidx/core/app/RemoteInput$Builder;
    return-object v0
.end method

.method public setLabel(Ljava/lang/CharSequence;)Landroidx/core/app/RemoteInput$Builder;
    .locals 4
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .prologue
    .line 155
    move-object v0, p0

    .local v0, "this":Landroidx/core/app/RemoteInput$Builder;
    move-object v1, p1

    .local v1, "label":Ljava/lang/CharSequence;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroidx/core/app/RemoteInput$Builder;->mLabel:Ljava/lang/CharSequence;

    .line 156
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Landroidx/core/app/RemoteInput$Builder;
    return-object v0
.end method

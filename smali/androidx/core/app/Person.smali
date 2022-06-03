.class public Landroidx/core/app/Person;
.super Ljava/lang/Object;
.source "Person.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/app/Person$Builder;
    }
.end annotation


# static fields
.field private static final ICON_KEY:Ljava/lang/String; = "icon"

.field private static final IS_BOT_KEY:Ljava/lang/String; = "isBot"

.field private static final IS_IMPORTANT_KEY:Ljava/lang/String; = "isImportant"

.field private static final KEY_KEY:Ljava/lang/String; = "key"

.field private static final NAME_KEY:Ljava/lang/String; = "name"

.field private static final URI_KEY:Ljava/lang/String; = "uri"


# instance fields
.field mIcon:Landroidx/core/graphics/drawable/IconCompat;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field mIsBot:Z

.field mIsImportant:Z

.field mKey:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field mName:Ljava/lang/CharSequence;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field mUri:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroidx/core/app/Person$Builder;)V
    .locals 4

    .prologue
    .line 95
    move-object v0, p0

    .local v0, "this":Landroidx/core/app/Person;
    move-object v1, p1

    .local v1, "builder":Landroidx/core/app/Person$Builder;
    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 96
    move-object v2, v0

    move-object v3, v1

    iget-object v3, v3, Landroidx/core/app/Person$Builder;->mName:Ljava/lang/CharSequence;

    iput-object v3, v2, Landroidx/core/app/Person;->mName:Ljava/lang/CharSequence;

    .line 97
    move-object v2, v0

    move-object v3, v1

    iget-object v3, v3, Landroidx/core/app/Person$Builder;->mIcon:Landroidx/core/graphics/drawable/IconCompat;

    iput-object v3, v2, Landroidx/core/app/Person;->mIcon:Landroidx/core/graphics/drawable/IconCompat;

    .line 98
    move-object v2, v0

    move-object v3, v1

    iget-object v3, v3, Landroidx/core/app/Person$Builder;->mUri:Ljava/lang/String;

    iput-object v3, v2, Landroidx/core/app/Person;->mUri:Ljava/lang/String;

    .line 99
    move-object v2, v0

    move-object v3, v1

    iget-object v3, v3, Landroidx/core/app/Person$Builder;->mKey:Ljava/lang/String;

    iput-object v3, v2, Landroidx/core/app/Person;->mKey:Ljava/lang/String;

    .line 100
    move-object v2, v0

    move-object v3, v1

    iget-boolean v3, v3, Landroidx/core/app/Person$Builder;->mIsBot:Z

    iput-boolean v3, v2, Landroidx/core/app/Person;->mIsBot:Z

    .line 101
    move-object v2, v0

    move-object v3, v1

    iget-boolean v3, v3, Landroidx/core/app/Person$Builder;->mIsImportant:Z

    iput-boolean v3, v2, Landroidx/core/app/Person;->mIsImportant:Z

    .line 102
    return-void
.end method

.method public static fromAndroidPerson(Landroid/app/Person;)Landroidx/core/app/Person;
    .locals 4
    .param p0    # Landroid/app/Person;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Landroidx/annotation/RequiresApi;
        value = 0x1c
    .end annotation

    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .prologue
    .line 68
    move-object v0, p0

    .local v0, "person":Landroid/app/Person;
    new-instance v1, Landroidx/core/app/Person$Builder;

    move-object v3, v1

    move-object v1, v3

    move-object v2, v3

    invoke-direct {v2}, Landroidx/core/app/Person$Builder;-><init>()V

    move-object v2, v0

    .line 69
    invoke-virtual {v2}, Landroid/app/Person;->getName()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/core/app/Person$Builder;->setName(Ljava/lang/CharSequence;)Landroidx/core/app/Person$Builder;

    move-result-object v1

    move-object v2, v0

    .line 71
    invoke-virtual {v2}, Landroid/app/Person;->getIcon()Landroid/graphics/drawable/Icon;

    move-result-object v2

    if-eqz v2, :cond_0

    move-object v2, v0

    .line 72
    invoke-virtual {v2}, Landroid/app/Person;->getIcon()Landroid/graphics/drawable/Icon;

    move-result-object v2

    invoke-static {v2}, Landroidx/core/graphics/drawable/IconCompat;->createFromIcon(Landroid/graphics/drawable/Icon;)Landroidx/core/graphics/drawable/IconCompat;

    move-result-object v2

    .line 70
    :goto_0
    invoke-virtual {v1, v2}, Landroidx/core/app/Person$Builder;->setIcon(Landroidx/core/graphics/drawable/IconCompat;)Landroidx/core/app/Person$Builder;

    move-result-object v1

    move-object v2, v0

    .line 74
    invoke-virtual {v2}, Landroid/app/Person;->getUri()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/core/app/Person$Builder;->setUri(Ljava/lang/String;)Landroidx/core/app/Person$Builder;

    move-result-object v1

    move-object v2, v0

    .line 75
    invoke-virtual {v2}, Landroid/app/Person;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/core/app/Person$Builder;->setKey(Ljava/lang/String;)Landroidx/core/app/Person$Builder;

    move-result-object v1

    move-object v2, v0

    .line 76
    invoke-virtual {v2}, Landroid/app/Person;->isBot()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroidx/core/app/Person$Builder;->setBot(Z)Landroidx/core/app/Person$Builder;

    move-result-object v1

    move-object v2, v0

    .line 77
    invoke-virtual {v2}, Landroid/app/Person;->isImportant()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroidx/core/app/Person$Builder;->setImportant(Z)Landroidx/core/app/Person$Builder;

    move-result-object v1

    .line 78
    invoke-virtual {v1}, Landroidx/core/app/Person$Builder;->build()Landroidx/core/app/Person;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "person":Landroid/app/Person;
    return-object v0

    .line 72
    .restart local v0    # "person":Landroid/app/Person;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static fromBundle(Landroid/os/Bundle;)Landroidx/core/app/Person;
    .locals 6
    .param p0    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .prologue
    .line 47
    move-object v0, p0

    .local v0, "bundle":Landroid/os/Bundle;
    move-object v2, v0

    const-string/jumbo v3, "icon"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    move-object v1, v2

    .line 48
    .local v1, "iconBundle":Landroid/os/Bundle;
    new-instance v2, Landroidx/core/app/Person$Builder;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    invoke-direct {v3}, Landroidx/core/app/Person$Builder;-><init>()V

    move-object v3, v0

    const-string/jumbo v4, "name"

    .line 49
    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroidx/core/app/Person$Builder;->setName(Ljava/lang/CharSequence;)Landroidx/core/app/Person$Builder;

    move-result-object v2

    move-object v3, v1

    if-eqz v3, :cond_0

    move-object v3, v1

    .line 50
    invoke-static {v3}, Landroidx/core/graphics/drawable/IconCompat;->createFromBundle(Landroid/os/Bundle;)Landroidx/core/graphics/drawable/IconCompat;

    move-result-object v3

    :goto_0
    invoke-virtual {v2, v3}, Landroidx/core/app/Person$Builder;->setIcon(Landroidx/core/graphics/drawable/IconCompat;)Landroidx/core/app/Person$Builder;

    move-result-object v2

    move-object v3, v0

    const-string/jumbo v4, "uri"

    .line 51
    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroidx/core/app/Person$Builder;->setUri(Ljava/lang/String;)Landroidx/core/app/Person$Builder;

    move-result-object v2

    move-object v3, v0

    const-string/jumbo v4, "key"

    .line 52
    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroidx/core/app/Person$Builder;->setKey(Ljava/lang/String;)Landroidx/core/app/Person$Builder;

    move-result-object v2

    move-object v3, v0

    const-string/jumbo v4, "isBot"

    .line 53
    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    invoke-virtual {v2, v3}, Landroidx/core/app/Person$Builder;->setBot(Z)Landroidx/core/app/Person$Builder;

    move-result-object v2

    move-object v3, v0

    const-string/jumbo v4, "isImportant"

    .line 54
    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    invoke-virtual {v2, v3}, Landroidx/core/app/Person$Builder;->setImportant(Z)Landroidx/core/app/Person$Builder;

    move-result-object v2

    .line 55
    invoke-virtual {v2}, Landroidx/core/app/Person$Builder;->build()Landroidx/core/app/Person;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "bundle":Landroid/os/Bundle;
    return-object v0

    .line 50
    .restart local v0    # "bundle":Landroid/os/Bundle;
    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getIcon()Landroidx/core/graphics/drawable/IconCompat;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .prologue
    .line 157
    move-object v0, p0

    .local v0, "this":Landroidx/core/app/Person;
    move-object v1, v0

    iget-object v1, v1, Landroidx/core/app/Person;->mIcon:Landroidx/core/graphics/drawable/IconCompat;

    move-object v0, v1

    .end local v0    # "this":Landroidx/core/app/Person;
    return-object v0
.end method

.method public getKey()Ljava/lang/String;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .prologue
    .line 184
    move-object v0, p0

    .local v0, "this":Landroidx/core/app/Person;
    move-object v1, v0

    iget-object v1, v1, Landroidx/core/app/Person;->mKey:Ljava/lang/String;

    move-object v0, v1

    .end local v0    # "this":Landroidx/core/app/Person;
    return-object v0
.end method

.method public getName()Ljava/lang/CharSequence;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .prologue
    .line 151
    move-object v0, p0

    .local v0, "this":Landroidx/core/app/Person;
    move-object v1, v0

    iget-object v1, v1, Landroidx/core/app/Person;->mName:Ljava/lang/CharSequence;

    move-object v0, v1

    .end local v0    # "this":Landroidx/core/app/Person;
    return-object v0
.end method

.method public getUri()Ljava/lang/String;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .prologue
    .line 175
    move-object v0, p0

    .local v0, "this":Landroidx/core/app/Person;
    move-object v1, v0

    iget-object v1, v1, Landroidx/core/app/Person;->mUri:Ljava/lang/String;

    move-object v0, v1

    .end local v0    # "this":Landroidx/core/app/Person;
    return-object v0
.end method

.method public isBot()Z
    .locals 2

    .prologue
    .line 192
    move-object v0, p0

    .local v0, "this":Landroidx/core/app/Person;
    move-object v1, v0

    iget-boolean v1, v1, Landroidx/core/app/Person;->mIsBot:Z

    move v0, v1

    .end local v0    # "this":Landroidx/core/app/Person;
    return v0
.end method

.method public isImportant()Z
    .locals 2

    .prologue
    .line 200
    move-object v0, p0

    .local v0, "this":Landroidx/core/app/Person;
    move-object v1, v0

    iget-boolean v1, v1, Landroidx/core/app/Person;->mIsImportant:Z

    move v0, v1

    .end local v0    # "this":Landroidx/core/app/Person;
    return v0
.end method

.method public toAndroidPerson()Landroid/app/Person;
    .locals 4
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Landroidx/annotation/RequiresApi;
        value = 0x1c
    .end annotation

    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .prologue
    .line 135
    move-object v0, p0

    .local v0, "this":Landroidx/core/app/Person;
    new-instance v1, Landroid/app/Person$Builder;

    move-object v3, v1

    move-object v1, v3

    move-object v2, v3

    invoke-direct {v2}, Landroid/app/Person$Builder;-><init>()V

    move-object v2, v0

    .line 136
    invoke-virtual {v2}, Landroidx/core/app/Person;->getName()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/Person$Builder;->setName(Ljava/lang/CharSequence;)Landroid/app/Person$Builder;

    move-result-object v1

    move-object v2, v0

    .line 137
    invoke-virtual {v2}, Landroidx/core/app/Person;->getIcon()Landroidx/core/graphics/drawable/IconCompat;

    move-result-object v2

    if-eqz v2, :cond_0

    move-object v2, v0

    invoke-virtual {v2}, Landroidx/core/app/Person;->getIcon()Landroidx/core/graphics/drawable/IconCompat;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/core/graphics/drawable/IconCompat;->toIcon()Landroid/graphics/drawable/Icon;

    move-result-object v2

    :goto_0
    invoke-virtual {v1, v2}, Landroid/app/Person$Builder;->setIcon(Landroid/graphics/drawable/Icon;)Landroid/app/Person$Builder;

    move-result-object v1

    move-object v2, v0

    .line 138
    invoke-virtual {v2}, Landroidx/core/app/Person;->getUri()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/Person$Builder;->setUri(Ljava/lang/String;)Landroid/app/Person$Builder;

    move-result-object v1

    move-object v2, v0

    .line 139
    invoke-virtual {v2}, Landroidx/core/app/Person;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/Person$Builder;->setKey(Ljava/lang/String;)Landroid/app/Person$Builder;

    move-result-object v1

    move-object v2, v0

    .line 140
    invoke-virtual {v2}, Landroidx/core/app/Person;->isBot()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/app/Person$Builder;->setBot(Z)Landroid/app/Person$Builder;

    move-result-object v1

    move-object v2, v0

    .line 141
    invoke-virtual {v2}, Landroidx/core/app/Person;->isImportant()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/app/Person$Builder;->setImportant(Z)Landroid/app/Person$Builder;

    move-result-object v1

    .line 142
    invoke-virtual {v1}, Landroid/app/Person$Builder;->build()Landroid/app/Person;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Landroidx/core/app/Person;
    return-object v0

    .line 137
    .restart local v0    # "this":Landroidx/core/app/Person;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public toBuilder()Landroidx/core/app/Person$Builder;
    .locals 5
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .prologue
    .line 123
    move-object v0, p0

    .local v0, "this":Landroidx/core/app/Person;
    new-instance v1, Landroidx/core/app/Person$Builder;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    move-object v3, v0

    invoke-direct {v2, v3}, Landroidx/core/app/Person$Builder;-><init>(Landroidx/core/app/Person;)V

    move-object v0, v1

    .end local v0    # "this":Landroidx/core/app/Person;
    return-object v0
.end method

.method public toBundle()Landroid/os/Bundle;
    .locals 6
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .prologue
    .line 110
    move-object v0, p0

    .local v0, "this":Landroidx/core/app/Person;
    new-instance v2, Landroid/os/Bundle;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    move-object v1, v2

    .line 111
    .local v1, "result":Landroid/os/Bundle;
    move-object v2, v1

    const-string/jumbo v3, "name"

    move-object v4, v0

    iget-object v4, v4, Landroidx/core/app/Person;->mName:Ljava/lang/CharSequence;

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 112
    move-object v2, v1

    const-string/jumbo v3, "icon"

    move-object v4, v0

    iget-object v4, v4, Landroidx/core/app/Person;->mIcon:Landroidx/core/graphics/drawable/IconCompat;

    if-eqz v4, :cond_0

    move-object v4, v0

    iget-object v4, v4, Landroidx/core/app/Person;->mIcon:Landroidx/core/graphics/drawable/IconCompat;

    invoke-virtual {v4}, Landroidx/core/graphics/drawable/IconCompat;->toBundle()Landroid/os/Bundle;

    move-result-object v4

    :goto_0
    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 113
    move-object v2, v1

    const-string/jumbo v3, "uri"

    move-object v4, v0

    iget-object v4, v4, Landroidx/core/app/Person;->mUri:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    move-object v2, v1

    const-string/jumbo v3, "key"

    move-object v4, v0

    iget-object v4, v4, Landroidx/core/app/Person;->mKey:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    move-object v2, v1

    const-string/jumbo v3, "isBot"

    move-object v4, v0

    iget-boolean v4, v4, Landroidx/core/app/Person;->mIsBot:Z

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 116
    move-object v2, v1

    const-string/jumbo v3, "isImportant"

    move-object v4, v0

    iget-boolean v4, v4, Landroidx/core/app/Person;->mIsImportant:Z

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 117
    move-object v2, v1

    move-object v0, v2

    .end local v0    # "this":Landroidx/core/app/Person;
    return-object v0

    .line 112
    .restart local v0    # "this":Landroidx/core/app/Person;
    :cond_0
    const/4 v4, 0x0

    goto :goto_0
.end method

.class public Landroidx/core/app/Person$Builder;
.super Ljava/lang/Object;
.source "Person.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/app/Person;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


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
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 213
    move-object v0, p0

    .local v0, "this":Landroidx/core/app/Person$Builder;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method constructor <init>(Landroidx/core/app/Person;)V
    .locals 4

    .prologue
    .line 215
    move-object v0, p0

    .local v0, "this":Landroidx/core/app/Person$Builder;
    move-object v1, p1

    .local v1, "person":Landroidx/core/app/Person;
    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 216
    move-object v2, v0

    move-object v3, v1

    iget-object v3, v3, Landroidx/core/app/Person;->mName:Ljava/lang/CharSequence;

    iput-object v3, v2, Landroidx/core/app/Person$Builder;->mName:Ljava/lang/CharSequence;

    .line 217
    move-object v2, v0

    move-object v3, v1

    iget-object v3, v3, Landroidx/core/app/Person;->mIcon:Landroidx/core/graphics/drawable/IconCompat;

    iput-object v3, v2, Landroidx/core/app/Person$Builder;->mIcon:Landroidx/core/graphics/drawable/IconCompat;

    .line 218
    move-object v2, v0

    move-object v3, v1

    iget-object v3, v3, Landroidx/core/app/Person;->mUri:Ljava/lang/String;

    iput-object v3, v2, Landroidx/core/app/Person$Builder;->mUri:Ljava/lang/String;

    .line 219
    move-object v2, v0

    move-object v3, v1

    iget-object v3, v3, Landroidx/core/app/Person;->mKey:Ljava/lang/String;

    iput-object v3, v2, Landroidx/core/app/Person$Builder;->mKey:Ljava/lang/String;

    .line 220
    move-object v2, v0

    move-object v3, v1

    iget-boolean v3, v3, Landroidx/core/app/Person;->mIsBot:Z

    iput-boolean v3, v2, Landroidx/core/app/Person$Builder;->mIsBot:Z

    .line 221
    move-object v2, v0

    move-object v3, v1

    iget-boolean v3, v3, Landroidx/core/app/Person;->mIsImportant:Z

    iput-boolean v3, v2, Landroidx/core/app/Person$Builder;->mIsImportant:Z

    .line 222
    return-void
.end method


# virtual methods
.method public build()Landroidx/core/app/Person;
    .locals 5
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .prologue
    .line 300
    move-object v0, p0

    .local v0, "this":Landroidx/core/app/Person$Builder;
    new-instance v1, Landroidx/core/app/Person;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    move-object v3, v0

    invoke-direct {v2, v3}, Landroidx/core/app/Person;-><init>(Landroidx/core/app/Person$Builder;)V

    move-object v0, v1

    .end local v0    # "this":Landroidx/core/app/Person$Builder;
    return-object v0
.end method

.method public setBot(Z)Landroidx/core/app/Person$Builder;
    .locals 4
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .prologue
    .line 281
    move-object v0, p0

    .local v0, "this":Landroidx/core/app/Person$Builder;
    move v1, p1

    .local v1, "bot":Z
    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Landroidx/core/app/Person$Builder;->mIsBot:Z

    .line 282
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Landroidx/core/app/Person$Builder;
    return-object v0
.end method

.method public setIcon(Landroidx/core/graphics/drawable/IconCompat;)Landroidx/core/app/Person$Builder;
    .locals 4
    .param p1    # Landroidx/core/graphics/drawable/IconCompat;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .prologue
    .line 242
    move-object v0, p0

    .local v0, "this":Landroidx/core/app/Person$Builder;
    move-object v1, p1

    .local v1, "icon":Landroidx/core/graphics/drawable/IconCompat;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroidx/core/app/Person$Builder;->mIcon:Landroidx/core/graphics/drawable/IconCompat;

    .line 243
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Landroidx/core/app/Person$Builder;
    return-object v0
.end method

.method public setImportant(Z)Landroidx/core/app/Person$Builder;
    .locals 4
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .prologue
    .line 293
    move-object v0, p0

    .local v0, "this":Landroidx/core/app/Person$Builder;
    move v1, p1

    .local v1, "important":Z
    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Landroidx/core/app/Person$Builder;->mIsImportant:Z

    .line 294
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Landroidx/core/app/Person$Builder;
    return-object v0
.end method

.method public setKey(Ljava/lang/String;)Landroidx/core/app/Person$Builder;
    .locals 4
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .prologue
    .line 271
    move-object v0, p0

    .local v0, "this":Landroidx/core/app/Person$Builder;
    move-object v1, p1

    .local v1, "key":Ljava/lang/String;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroidx/core/app/Person$Builder;->mKey:Ljava/lang/String;

    .line 272
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Landroidx/core/app/Person$Builder;
    return-object v0
.end method

.method public setName(Ljava/lang/CharSequence;)Landroidx/core/app/Person$Builder;
    .locals 4
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .prologue
    .line 230
    move-object v0, p0

    .local v0, "this":Landroidx/core/app/Person$Builder;
    move-object v1, p1

    .local v1, "name":Ljava/lang/CharSequence;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroidx/core/app/Person$Builder;->mName:Ljava/lang/CharSequence;

    .line 231
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Landroidx/core/app/Person$Builder;
    return-object v0
.end method

.method public setUri(Ljava/lang/String;)Landroidx/core/app/Person$Builder;
    .locals 4
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .prologue
    .line 260
    move-object v0, p0

    .local v0, "this":Landroidx/core/app/Person$Builder;
    move-object v1, p1

    .local v1, "uri":Ljava/lang/String;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroidx/core/app/Person$Builder;->mUri:Ljava/lang/String;

    .line 261
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Landroidx/core/app/Person$Builder;
    return-object v0
.end method

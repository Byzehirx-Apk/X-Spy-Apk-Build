.class public final Landroidx/core/provider/FontRequest;
.super Ljava/lang/Object;
.source "FontRequest.java"


# instance fields
.field private final mCertificates:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/util/List",
            "<[B>;>;"
        }
    .end annotation
.end field

.field private final mCertificatesArray:I

.field private final mIdentifier:Ljava/lang/String;

.field private final mProviderAuthority:Ljava/lang/String;

.field private final mProviderPackage:Ljava/lang/String;

.field private final mQuery:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 10
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # I
        .annotation build Landroidx/annotation/ArrayRes;
        .end annotation
    .end param

    .prologue
    .line 78
    move-object v0, p0

    .local v0, "this":Landroidx/core/provider/FontRequest;
    move-object v1, p1

    .local v1, "providerAuthority":Ljava/lang/String;
    move-object v2, p2

    .local v2, "providerPackage":Ljava/lang/String;
    move-object v3, p3

    .local v3, "query":Ljava/lang/String;
    move v4, p4

    .local v4, "certificates":I
    move-object v5, v0

    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    .line 79
    move-object v5, v0

    move-object v6, v1

    invoke-static {v6}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    iput-object v6, v5, Landroidx/core/provider/FontRequest;->mProviderAuthority:Ljava/lang/String;

    .line 80
    move-object v5, v0

    move-object v6, v2

    invoke-static {v6}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    iput-object v6, v5, Landroidx/core/provider/FontRequest;->mProviderPackage:Ljava/lang/String;

    .line 81
    move-object v5, v0

    move-object v6, v3

    invoke-static {v6}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    iput-object v6, v5, Landroidx/core/provider/FontRequest;->mQuery:Ljava/lang/String;

    .line 82
    move-object v5, v0

    const/4 v6, 0x0

    iput-object v6, v5, Landroidx/core/provider/FontRequest;->mCertificates:Ljava/util/List;

    .line 83
    move v5, v4

    if-eqz v5, :cond_0

    const/4 v5, 0x1

    :goto_0
    invoke-static {v5}, Landroidx/core/util/Preconditions;->checkArgument(Z)V

    .line 84
    move-object v5, v0

    move v6, v4

    iput v6, v5, Landroidx/core/provider/FontRequest;->mCertificatesArray:I

    .line 85
    move-object v5, v0

    new-instance v6, Ljava/lang/StringBuilder;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    move-object v8, v0

    iget-object v8, v8, Landroidx/core/provider/FontRequest;->mProviderAuthority:Ljava/lang/String;

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v7, "-"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v7, v0

    iget-object v7, v7, Landroidx/core/provider/FontRequest;->mProviderPackage:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "-"

    .line 86
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v7, v0

    iget-object v7, v7, Landroidx/core/provider/FontRequest;->mQuery:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Landroidx/core/provider/FontRequest;->mIdentifier:Ljava/lang/String;

    .line 87
    return-void

    .line 83
    :cond_0
    const/4 v5, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .locals 10
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/util/List",
            "<[B>;>;)V"
        }
    .end annotation

    .prologue
    .line 56
    move-object v0, p0

    .local v0, "this":Landroidx/core/provider/FontRequest;
    move-object v1, p1

    .local v1, "providerAuthority":Ljava/lang/String;
    move-object v2, p2

    .local v2, "providerPackage":Ljava/lang/String;
    move-object v3, p3

    .local v3, "query":Ljava/lang/String;
    move-object v4, p4

    .local v4, "certificates":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<[B>;>;"
    move-object v5, v0

    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    .line 57
    move-object v5, v0

    move-object v6, v1

    invoke-static {v6}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    iput-object v6, v5, Landroidx/core/provider/FontRequest;->mProviderAuthority:Ljava/lang/String;

    .line 58
    move-object v5, v0

    move-object v6, v2

    invoke-static {v6}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    iput-object v6, v5, Landroidx/core/provider/FontRequest;->mProviderPackage:Ljava/lang/String;

    .line 59
    move-object v5, v0

    move-object v6, v3

    invoke-static {v6}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    iput-object v6, v5, Landroidx/core/provider/FontRequest;->mQuery:Ljava/lang/String;

    .line 60
    move-object v5, v0

    move-object v6, v4

    invoke-static {v6}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    iput-object v6, v5, Landroidx/core/provider/FontRequest;->mCertificates:Ljava/util/List;

    .line 61
    move-object v5, v0

    const/4 v6, 0x0

    iput v6, v5, Landroidx/core/provider/FontRequest;->mCertificatesArray:I

    .line 62
    move-object v5, v0

    new-instance v6, Ljava/lang/StringBuilder;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    move-object v8, v0

    iget-object v8, v8, Landroidx/core/provider/FontRequest;->mProviderAuthority:Ljava/lang/String;

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v7, "-"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v7, v0

    iget-object v7, v7, Landroidx/core/provider/FontRequest;->mProviderPackage:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "-"

    .line 63
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v7, v0

    iget-object v7, v7, Landroidx/core/provider/FontRequest;->mQuery:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Landroidx/core/provider/FontRequest;->mIdentifier:Ljava/lang/String;

    .line 64
    return-void
.end method


# virtual methods
.method public getCertificates()Ljava/util/List;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/util/List",
            "<[B>;>;"
        }
    .end annotation

    .prologue
    .line 125
    move-object v0, p0

    .local v0, "this":Landroidx/core/provider/FontRequest;
    move-object v1, v0

    iget-object v1, v1, Landroidx/core/provider/FontRequest;->mCertificates:Ljava/util/List;

    move-object v0, v1

    .end local v0    # "this":Landroidx/core/provider/FontRequest;
    return-object v0
.end method

.method public getCertificatesArrayResId()I
    .locals 2
    .annotation build Landroidx/annotation/ArrayRes;
    .end annotation

    .prologue
    .line 137
    move-object v0, p0

    .local v0, "this":Landroidx/core/provider/FontRequest;
    move-object v1, v0

    iget v1, v1, Landroidx/core/provider/FontRequest;->mCertificatesArray:I

    move v0, v1

    .end local v0    # "this":Landroidx/core/provider/FontRequest;
    return v0
.end method

.method public getIdentifier()Ljava/lang/String;
    .locals 2
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .prologue
    .line 143
    move-object v0, p0

    .local v0, "this":Landroidx/core/provider/FontRequest;
    move-object v1, v0

    iget-object v1, v1, Landroidx/core/provider/FontRequest;->mIdentifier:Ljava/lang/String;

    move-object v0, v1

    .end local v0    # "this":Landroidx/core/provider/FontRequest;
    return-object v0
.end method

.method public getProviderAuthority()Ljava/lang/String;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .prologue
    .line 95
    move-object v0, p0

    .local v0, "this":Landroidx/core/provider/FontRequest;
    move-object v1, v0

    iget-object v1, v1, Landroidx/core/provider/FontRequest;->mProviderAuthority:Ljava/lang/String;

    move-object v0, v1

    .end local v0    # "this":Landroidx/core/provider/FontRequest;
    return-object v0
.end method

.method public getProviderPackage()Ljava/lang/String;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .prologue
    .line 104
    move-object v0, p0

    .local v0, "this":Landroidx/core/provider/FontRequest;
    move-object v1, v0

    iget-object v1, v1, Landroidx/core/provider/FontRequest;->mProviderPackage:Ljava/lang/String;

    move-object v0, v1

    .end local v0    # "this":Landroidx/core/provider/FontRequest;
    return-object v0
.end method

.method public getQuery()Ljava/lang/String;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .prologue
    .line 113
    move-object v0, p0

    .local v0, "this":Landroidx/core/provider/FontRequest;
    move-object v1, v0

    iget-object v1, v1, Landroidx/core/provider/FontRequest;->mQuery:Ljava/lang/String;

    move-object v0, v1

    .end local v0    # "this":Landroidx/core/provider/FontRequest;
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 10

    .prologue
    .line 148
    move-object v0, p0

    .local v0, "this":Landroidx/core/provider/FontRequest;
    new-instance v6, Ljava/lang/StringBuilder;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    move-object v1, v6

    .line 149
    .local v1, "builder":Ljava/lang/StringBuilder;
    move-object v6, v1

    new-instance v7, Ljava/lang/StringBuilder;

    move-object v9, v7

    move-object v7, v9

    move-object v8, v9

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "FontRequest {mProviderAuthority: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v8, v0

    iget-object v8, v8, Landroidx/core/provider/FontRequest;->mProviderAuthority:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ", mProviderPackage: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v8, v0

    iget-object v8, v8, Landroidx/core/provider/FontRequest;->mProviderPackage:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ", mQuery: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v8, v0

    iget-object v8, v8, Landroidx/core/provider/FontRequest;->mQuery:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ", mCertificates:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 154
    const/4 v6, 0x0

    move v2, v6

    .local v2, "i":I
    :goto_0
    move v6, v2

    move-object v7, v0

    iget-object v7, v7, Landroidx/core/provider/FontRequest;->mCertificates:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-ge v6, v7, :cond_1

    .line 155
    move-object v6, v1

    const-string/jumbo v7, " ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 156
    move-object v6, v0

    iget-object v6, v6, Landroidx/core/provider/FontRequest;->mCertificates:Ljava/util/List;

    move v7, v2

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    move-object v3, v6

    .line 157
    .local v3, "set":Ljava/util/List;, "Ljava/util/List<[B>;"
    const/4 v6, 0x0

    move v4, v6

    .local v4, "j":I
    :goto_1
    move v6, v4

    move-object v7, v3

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-ge v6, v7, :cond_0

    .line 158
    move-object v6, v1

    const-string/jumbo v7, " \""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 159
    move-object v6, v3

    move v7, v4

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [B

    move-object v5, v6

    .line 160
    .local v5, "array":[B
    move-object v6, v1

    move-object v7, v5

    const/4 v8, 0x0

    invoke-static {v7, v8}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 161
    move-object v6, v1

    const-string/jumbo v7, "\""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 157
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 163
    .end local v5    # "array":[B
    :cond_0
    move-object v6, v1

    const-string/jumbo v7, " ]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 154
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 165
    .end local v3    # "set":Ljava/util/List;, "Ljava/util/List<[B>;"
    .end local v4    # "j":I
    :cond_1
    move-object v6, v1

    const-string/jumbo v7, "}"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 166
    move-object v6, v1

    new-instance v7, Ljava/lang/StringBuilder;

    move-object v9, v7

    move-object v7, v9

    move-object v8, v9

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "mCertificatesArray: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v8, v0

    iget v8, v8, Landroidx/core/provider/FontRequest;->mCertificatesArray:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 167
    move-object v6, v1

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object v0, v6

    .end local v0    # "this":Landroidx/core/provider/FontRequest;
    return-object v0
.end method

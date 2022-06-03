.class public Lorg/slf4j/helpers/BasicMarker;
.super Ljava/lang/Object;
.source "BasicMarker.java"

# interfaces
.implements Lorg/slf4j/Marker;


# static fields
.field private static CLOSE:Ljava/lang/String; = null

.field private static OPEN:Ljava/lang/String; = null

.field private static SEP:Ljava/lang/String; = null

.field private static final serialVersionUID:J = -0x278bb2a61617a311L


# instance fields
.field private final name:Ljava/lang/String;

.field private referenceList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/slf4j/Marker;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 130
    const-string/jumbo v0, "[ "

    sput-object v0, Lorg/slf4j/helpers/BasicMarker;->OPEN:Ljava/lang/String;

    .line 131
    const-string/jumbo v0, " ]"

    sput-object v0, Lorg/slf4j/helpers/BasicMarker;->CLOSE:Ljava/lang/String;

    .line 132
    const-string/jumbo v0, ", "

    sput-object v0, Lorg/slf4j/helpers/BasicMarker;->SEP:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 45
    move-object v0, p0

    .local v0, "this":Lorg/slf4j/helpers/BasicMarker;
    move-object v1, p1

    .local v1, "name":Ljava/lang/String;
    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 43
    move-object v2, v0

    new-instance v3, Ljava/util/concurrent/CopyOnWriteArrayList;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v3, v2, Lorg/slf4j/helpers/BasicMarker;->referenceList:Ljava/util/List;

    .line 46
    move-object v2, v1

    if-nez v2, :cond_0

    .line 47
    new-instance v2, Ljava/lang/IllegalArgumentException;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const-string/jumbo v4, "A marker name cannot be null"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 49
    :cond_0
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lorg/slf4j/helpers/BasicMarker;->name:Ljava/lang/String;

    .line 50
    return-void
.end method


# virtual methods
.method public add(Lorg/slf4j/Marker;)V
    .locals 6

    .prologue
    .line 57
    move-object v0, p0

    .local v0, "this":Lorg/slf4j/helpers/BasicMarker;
    move-object v1, p1

    .local v1, "reference":Lorg/slf4j/Marker;
    move-object v2, v1

    if-nez v2, :cond_0

    .line 58
    new-instance v2, Ljava/lang/IllegalArgumentException;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const-string/jumbo v4, "A null value cannot be added to a Marker as reference."

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 62
    :cond_0
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Lorg/slf4j/helpers/BasicMarker;->contains(Lorg/slf4j/Marker;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 63
    .line 71
    :goto_0
    return-void

    .line 65
    :cond_1
    move-object v2, v1

    move-object v3, v0

    invoke-interface {v2, v3}, Lorg/slf4j/Marker;->contains(Lorg/slf4j/Marker;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 67
    goto :goto_0

    .line 69
    :cond_2
    move-object v2, v0

    iget-object v2, v2, Lorg/slf4j/helpers/BasicMarker;->referenceList:Ljava/util/List;

    move-object v3, v1

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v2

    .line 71
    goto :goto_0
.end method

.method public contains(Ljava/lang/String;)Z
    .locals 8

    .prologue
    .line 112
    move-object v0, p0

    .local v0, "this":Lorg/slf4j/helpers/BasicMarker;
    move-object v1, p1

    .local v1, "name":Ljava/lang/String;
    move-object v4, v1

    if-nez v4, :cond_0

    .line 113
    new-instance v4, Ljava/lang/IllegalArgumentException;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    const-string/jumbo v6, "Other cannot be null"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 116
    :cond_0
    move-object v4, v0

    iget-object v4, v4, Lorg/slf4j/helpers/BasicMarker;->name:Ljava/lang/String;

    move-object v5, v1

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 117
    const/4 v4, 0x1

    move v0, v4

    .line 127
    .end local v0    # "this":Lorg/slf4j/helpers/BasicMarker;
    :goto_0
    return v0

    .line 120
    .restart local v0    # "this":Lorg/slf4j/helpers/BasicMarker;
    :cond_1
    move-object v4, v0

    invoke-virtual {v4}, Lorg/slf4j/helpers/BasicMarker;->hasReferences()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 121
    move-object v4, v0

    iget-object v4, v4, Lorg/slf4j/helpers/BasicMarker;->referenceList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move-object v2, v4

    :goto_1
    move-object v4, v2

    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    move-object v4, v2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/slf4j/Marker;

    move-object v3, v4

    .line 122
    .local v3, "ref":Lorg/slf4j/Marker;
    move-object v4, v3

    move-object v5, v1

    invoke-interface {v4, v5}, Lorg/slf4j/Marker;->contains(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 123
    const/4 v4, 0x1

    move v0, v4

    goto :goto_0

    .line 125
    :cond_2
    goto :goto_1

    .line 127
    .end local v3    # "ref":Lorg/slf4j/Marker;
    :cond_3
    const/4 v4, 0x0

    move v0, v4

    goto :goto_0
.end method

.method public contains(Lorg/slf4j/Marker;)Z
    .locals 8

    .prologue
    .line 90
    move-object v0, p0

    .local v0, "this":Lorg/slf4j/helpers/BasicMarker;
    move-object v1, p1

    .local v1, "other":Lorg/slf4j/Marker;
    move-object v4, v1

    if-nez v4, :cond_0

    .line 91
    new-instance v4, Ljava/lang/IllegalArgumentException;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    const-string/jumbo v6, "Other cannot be null"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 94
    :cond_0
    move-object v4, v0

    move-object v5, v1

    invoke-virtual {v4, v5}, Lorg/slf4j/helpers/BasicMarker;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 95
    const/4 v4, 0x1

    move v0, v4

    .line 105
    .end local v0    # "this":Lorg/slf4j/helpers/BasicMarker;
    :goto_0
    return v0

    .line 98
    .restart local v0    # "this":Lorg/slf4j/helpers/BasicMarker;
    :cond_1
    move-object v4, v0

    invoke-virtual {v4}, Lorg/slf4j/helpers/BasicMarker;->hasReferences()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 99
    move-object v4, v0

    iget-object v4, v4, Lorg/slf4j/helpers/BasicMarker;->referenceList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move-object v2, v4

    :goto_1
    move-object v4, v2

    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    move-object v4, v2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/slf4j/Marker;

    move-object v3, v4

    .line 100
    .local v3, "ref":Lorg/slf4j/Marker;
    move-object v4, v3

    move-object v5, v1

    invoke-interface {v4, v5}, Lorg/slf4j/Marker;->contains(Lorg/slf4j/Marker;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 101
    const/4 v4, 0x1

    move v0, v4

    goto :goto_0

    .line 103
    :cond_2
    goto :goto_1

    .line 105
    .end local v3    # "ref":Lorg/slf4j/Marker;
    :cond_3
    const/4 v4, 0x0

    move v0, v4

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5

    .prologue
    .line 135
    move-object v0, p0

    .local v0, "this":Lorg/slf4j/helpers/BasicMarker;
    move-object v1, p1

    .local v1, "obj":Ljava/lang/Object;
    move-object v3, v0

    move-object v4, v1

    if-ne v3, v4, :cond_0

    .line 136
    const/4 v3, 0x1

    move v0, v3

    .line 143
    .end local v0    # "this":Lorg/slf4j/helpers/BasicMarker;
    :goto_0
    return v0

    .line 137
    .restart local v0    # "this":Lorg/slf4j/helpers/BasicMarker;
    :cond_0
    move-object v3, v1

    if-nez v3, :cond_1

    .line 138
    const/4 v3, 0x0

    move v0, v3

    goto :goto_0

    .line 139
    :cond_1
    move-object v3, v1

    instance-of v3, v3, Lorg/slf4j/Marker;

    if-nez v3, :cond_2

    .line 140
    const/4 v3, 0x0

    move v0, v3

    goto :goto_0

    .line 142
    :cond_2
    move-object v3, v1

    check-cast v3, Lorg/slf4j/Marker;

    move-object v2, v3

    .line 143
    .local v2, "other":Lorg/slf4j/Marker;
    move-object v3, v0

    iget-object v3, v3, Lorg/slf4j/helpers/BasicMarker;->name:Ljava/lang/String;

    move-object v4, v2

    invoke-interface {v4}, Lorg/slf4j/Marker;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    move v0, v3

    goto :goto_0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 53
    move-object v0, p0

    .local v0, "this":Lorg/slf4j/helpers/BasicMarker;
    move-object v1, v0

    iget-object v1, v1, Lorg/slf4j/helpers/BasicMarker;->name:Ljava/lang/String;

    move-object v0, v1

    .end local v0    # "this":Lorg/slf4j/helpers/BasicMarker;
    return-object v0
.end method

.method public hasChildren()Z
    .locals 2

    .prologue
    .line 78
    move-object v0, p0

    .local v0, "this":Lorg/slf4j/helpers/BasicMarker;
    move-object v1, v0

    invoke-virtual {v1}, Lorg/slf4j/helpers/BasicMarker;->hasReferences()Z

    move-result v1

    move v0, v1

    .end local v0    # "this":Lorg/slf4j/helpers/BasicMarker;
    return v0
.end method

.method public hasReferences()Z
    .locals 2

    .prologue
    .line 74
    move-object v0, p0

    .local v0, "this":Lorg/slf4j/helpers/BasicMarker;
    move-object v1, v0

    iget-object v1, v1, Lorg/slf4j/helpers/BasicMarker;->referenceList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "this":Lorg/slf4j/helpers/BasicMarker;
    return v0

    .restart local v0    # "this":Lorg/slf4j/helpers/BasicMarker;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 147
    move-object v0, p0

    .local v0, "this":Lorg/slf4j/helpers/BasicMarker;
    move-object v1, v0

    iget-object v1, v1, Lorg/slf4j/helpers/BasicMarker;->name:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    move v0, v1

    .end local v0    # "this":Lorg/slf4j/helpers/BasicMarker;
    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Lorg/slf4j/Marker;",
            ">;"
        }
    .end annotation

    .prologue
    .line 82
    move-object v0, p0

    .local v0, "this":Lorg/slf4j/helpers/BasicMarker;
    move-object v1, v0

    iget-object v1, v1, Lorg/slf4j/helpers/BasicMarker;->referenceList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lorg/slf4j/helpers/BasicMarker;
    return-object v0
.end method

.method public remove(Lorg/slf4j/Marker;)Z
    .locals 4

    .prologue
    .line 86
    move-object v0, p0

    .local v0, "this":Lorg/slf4j/helpers/BasicMarker;
    move-object v1, p1

    .local v1, "referenceToRemove":Lorg/slf4j/Marker;
    move-object v2, v0

    iget-object v2, v2, Lorg/slf4j/helpers/BasicMarker;->referenceList:Ljava/util/List;

    move-object v3, v1

    invoke-interface {v2, v3}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v2

    move v0, v2

    .end local v0    # "this":Lorg/slf4j/helpers/BasicMarker;
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 8

    .prologue
    .line 151
    move-object v0, p0

    .local v0, "this":Lorg/slf4j/helpers/BasicMarker;
    move-object v4, v0

    invoke-virtual {v4}, Lorg/slf4j/helpers/BasicMarker;->hasReferences()Z

    move-result v4

    if-nez v4, :cond_0

    .line 152
    move-object v4, v0

    invoke-virtual {v4}, Lorg/slf4j/helpers/BasicMarker;->getName()Ljava/lang/String;

    move-result-object v4

    move-object v0, v4

    .line 167
    .end local v0    # "this":Lorg/slf4j/helpers/BasicMarker;
    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/slf4j/Marker;>;"
    .local v3, "sb":Ljava/lang/StringBuilder;
    :goto_0
    return-object v0

    .line 154
    .end local v1    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/slf4j/Marker;>;"
    .end local v3    # "sb":Ljava/lang/StringBuilder;
    .restart local v0    # "this":Lorg/slf4j/helpers/BasicMarker;
    :cond_0
    move-object v4, v0

    invoke-virtual {v4}, Lorg/slf4j/helpers/BasicMarker;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move-object v1, v4

    .line 156
    .restart local v1    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/slf4j/Marker;>;"
    new-instance v4, Ljava/lang/StringBuilder;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    move-object v6, v0

    invoke-virtual {v6}, Lorg/slf4j/helpers/BasicMarker;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v3, v4

    .line 157
    .restart local v3    # "sb":Ljava/lang/StringBuilder;
    move-object v4, v3

    const/16 v5, 0x20

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lorg/slf4j/helpers/BasicMarker;->OPEN:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 158
    :cond_1
    :goto_1
    move-object v4, v1

    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 159
    move-object v4, v1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/slf4j/Marker;

    move-object v2, v4

    .line 160
    .local v2, "reference":Lorg/slf4j/Marker;
    move-object v4, v3

    move-object v5, v2

    invoke-interface {v5}, Lorg/slf4j/Marker;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 161
    move-object v4, v1

    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 162
    move-object v4, v3

    sget-object v5, Lorg/slf4j/helpers/BasicMarker;->SEP:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    goto :goto_1

    .line 165
    .end local v2    # "reference":Lorg/slf4j/Marker;
    :cond_2
    move-object v4, v3

    sget-object v5, Lorg/slf4j/helpers/BasicMarker;->CLOSE:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 167
    move-object v4, v3

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v0, v4

    goto :goto_0
.end method

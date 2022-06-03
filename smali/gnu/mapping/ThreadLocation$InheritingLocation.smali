.class public Lgnu/mapping/ThreadLocation$InheritingLocation;
.super Ljava/lang/InheritableThreadLocal;
.source "ThreadLocation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgnu/mapping/ThreadLocation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "InheritingLocation"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/InheritableThreadLocal",
        "<",
        "Lgnu/mapping/NamedLocation;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lgnu/mapping/ThreadLocation;


# direct methods
.method public constructor <init>(Lgnu/mapping/ThreadLocation;)V
    .locals 4

    .prologue
    .line 155
    move-object v0, p0

    .local v0, "this":Lgnu/mapping/ThreadLocation$InheritingLocation;
    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lgnu/mapping/ThreadLocation$InheritingLocation;->this$0:Lgnu/mapping/ThreadLocation;

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/InheritableThreadLocal;-><init>()V

    return-void
.end method


# virtual methods
.method protected childValue(Lgnu/mapping/NamedLocation;)Lgnu/mapping/SharedLocation;
    .locals 10

    .prologue
    .line 160
    move-object v0, p0

    .local v0, "this":Lgnu/mapping/ThreadLocation$InheritingLocation;
    move-object v1, p1

    .local v1, "parentValue":Lgnu/mapping/NamedLocation;
    move-object v4, v0

    iget-object v4, v4, Lgnu/mapping/ThreadLocation$InheritingLocation;->this$0:Lgnu/mapping/ThreadLocation;

    iget-object v4, v4, Lgnu/mapping/ThreadLocation;->property:Ljava/lang/Object;

    sget-object v5, Lgnu/mapping/ThreadLocation;->ANONYMOUS:Ljava/lang/String;

    if-eq v4, v5, :cond_0

    .line 161
    new-instance v4, Ljava/lang/Error;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    invoke-direct {v5}, Ljava/lang/Error;-><init>()V

    throw v4

    .line 162
    :cond_0
    move-object v4, v1

    if-nez v4, :cond_1

    .line 163
    move-object v4, v0

    iget-object v4, v4, Lgnu/mapping/ThreadLocation$InheritingLocation;->this$0:Lgnu/mapping/ThreadLocation;

    invoke-virtual {v4}, Lgnu/mapping/ThreadLocation;->getLocation()Lgnu/mapping/NamedLocation;

    move-result-object v4

    check-cast v4, Lgnu/mapping/SharedLocation;

    move-object v1, v4

    .line 164
    :cond_1
    move-object v4, v1

    move-object v2, v4

    .line 165
    .local v2, "nloc":Lgnu/mapping/NamedLocation;
    move-object v4, v2

    iget-object v4, v4, Lgnu/mapping/NamedLocation;->base:Lgnu/mapping/Location;

    if-nez v4, :cond_2

    .line 167
    new-instance v4, Lgnu/mapping/SharedLocation;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    move-object v6, v0

    iget-object v6, v6, Lgnu/mapping/ThreadLocation$InheritingLocation;->this$0:Lgnu/mapping/ThreadLocation;

    iget-object v6, v6, Lgnu/mapping/ThreadLocation;->name:Lgnu/mapping/Symbol;

    move-object v7, v0

    iget-object v7, v7, Lgnu/mapping/ThreadLocation$InheritingLocation;->this$0:Lgnu/mapping/ThreadLocation;

    iget-object v7, v7, Lgnu/mapping/ThreadLocation;->property:Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-direct {v5, v6, v7, v8}, Lgnu/mapping/SharedLocation;-><init>(Lgnu/mapping/Symbol;Ljava/lang/Object;I)V

    move-object v3, v4

    .line 168
    .local v3, "sloc":Lgnu/mapping/SharedLocation;
    move-object v4, v3

    move-object v5, v2

    iget-object v5, v5, Lgnu/mapping/NamedLocation;->value:Ljava/lang/Object;

    iput-object v5, v4, Lgnu/mapping/SharedLocation;->value:Ljava/lang/Object;

    .line 169
    move-object v4, v2

    move-object v5, v3

    iput-object v5, v4, Lgnu/mapping/NamedLocation;->base:Lgnu/mapping/Location;

    .line 170
    move-object v4, v2

    const/4 v5, 0x0

    iput-object v5, v4, Lgnu/mapping/NamedLocation;->value:Ljava/lang/Object;

    .line 171
    move-object v4, v3

    move-object v2, v4

    .line 173
    .end local v3    # "sloc":Lgnu/mapping/SharedLocation;
    :cond_2
    new-instance v4, Lgnu/mapping/SharedLocation;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    move-object v6, v0

    iget-object v6, v6, Lgnu/mapping/ThreadLocation$InheritingLocation;->this$0:Lgnu/mapping/ThreadLocation;

    iget-object v6, v6, Lgnu/mapping/ThreadLocation;->name:Lgnu/mapping/Symbol;

    move-object v7, v0

    iget-object v7, v7, Lgnu/mapping/ThreadLocation$InheritingLocation;->this$0:Lgnu/mapping/ThreadLocation;

    iget-object v7, v7, Lgnu/mapping/ThreadLocation;->property:Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-direct {v5, v6, v7, v8}, Lgnu/mapping/SharedLocation;-><init>(Lgnu/mapping/Symbol;Ljava/lang/Object;I)V

    move-object v3, v4

    .line 174
    .restart local v3    # "sloc":Lgnu/mapping/SharedLocation;
    move-object v4, v3

    const/4 v5, 0x0

    iput-object v5, v4, Lgnu/mapping/SharedLocation;->value:Ljava/lang/Object;

    .line 175
    move-object v4, v3

    move-object v5, v2

    iput-object v5, v4, Lgnu/mapping/SharedLocation;->base:Lgnu/mapping/Location;

    .line 176
    move-object v4, v3

    move-object v0, v4

    .end local v0    # "this":Lgnu/mapping/ThreadLocation$InheritingLocation;
    return-object v0
.end method

.method protected bridge synthetic childValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .prologue
    .line 155
    move-object v0, p0

    .local v0, "this":Lgnu/mapping/ThreadLocation$InheritingLocation;
    move-object v1, p1

    .local v1, "x0":Ljava/lang/Object;
    move-object v2, v0

    move-object v3, v1

    check-cast v3, Lgnu/mapping/NamedLocation;

    invoke-virtual {v2, v3}, Lgnu/mapping/ThreadLocation$InheritingLocation;->childValue(Lgnu/mapping/NamedLocation;)Lgnu/mapping/SharedLocation;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Lgnu/mapping/ThreadLocation$InheritingLocation;
    return-object v0
.end method

.class Lgnu/mapping/SymbolRef;
.super Ljava/lang/ref/WeakReference;
.source "Namespace.java"


# instance fields
.field next:Lgnu/mapping/SymbolRef;


# direct methods
.method constructor <init>(Lgnu/mapping/Symbol;Lgnu/mapping/Namespace;)V
    .locals 5

    .prologue
    .line 372
    move-object v0, p0

    .local v0, "this":Lgnu/mapping/SymbolRef;
    move-object v1, p1

    .local v1, "sym":Lgnu/mapping/Symbol;
    move-object v2, p2

    .local v2, "ns":Lgnu/mapping/Namespace;
    move-object v3, v0

    move-object v4, v1

    invoke-direct {v3, v4}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 376
    return-void
.end method


# virtual methods
.method getSymbol()Lgnu/mapping/Symbol;
    .locals 2

    .prologue
    .line 381
    move-object v0, p0

    .local v0, "this":Lgnu/mapping/SymbolRef;
    move-object v1, v0

    invoke-virtual {v1}, Lgnu/mapping/SymbolRef;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgnu/mapping/Symbol;

    move-object v0, v1

    .end local v0    # "this":Lgnu/mapping/SymbolRef;
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 390
    move-object v0, p0

    .local v0, "this":Lgnu/mapping/SymbolRef;
    new-instance v1, Ljava/lang/StringBuilder;

    move-object v3, v1

    move-object v1, v3

    move-object v2, v3

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "SymbolRef["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    invoke-virtual {v2}, Lgnu/mapping/SymbolRef;->getSymbol()Lgnu/mapping/Symbol;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lgnu/mapping/SymbolRef;
    return-object v0
.end method

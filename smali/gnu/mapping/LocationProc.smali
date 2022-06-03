.class public Lgnu/mapping/LocationProc;
.super Lgnu/mapping/Procedure0or1;
.source "LocationProc.java"

# interfaces
.implements Lgnu/mapping/HasSetter;


# instance fields
.field loc:Lgnu/mapping/Location;


# direct methods
.method public constructor <init>(Lgnu/mapping/Location;)V
    .locals 4

    .prologue
    .line 15
    move-object v0, p0

    .local v0, "this":Lgnu/mapping/LocationProc;
    move-object v1, p1

    .local v1, "loc":Lgnu/mapping/Location;
    move-object v2, v0

    invoke-direct {v2}, Lgnu/mapping/Procedure0or1;-><init>()V

    .line 16
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lgnu/mapping/LocationProc;->loc:Lgnu/mapping/Location;

    .line 17
    return-void
.end method

.method public constructor <init>(Lgnu/mapping/Location;Lgnu/mapping/Procedure;)V
    .locals 5

    .prologue
    .line 27
    move-object v0, p0

    .local v0, "this":Lgnu/mapping/LocationProc;
    move-object v1, p1

    .local v1, "loc":Lgnu/mapping/Location;
    move-object v2, p2

    .local v2, "converter":Lgnu/mapping/Procedure;
    move-object v3, v0

    invoke-direct {v3}, Lgnu/mapping/Procedure0or1;-><init>()V

    .line 28
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lgnu/mapping/LocationProc;->loc:Lgnu/mapping/Location;

    .line 29
    move-object v3, v2

    if-eqz v3, :cond_0

    .line 30
    move-object v3, v0

    move-object v4, v2

    invoke-virtual {v3, v4}, Lgnu/mapping/LocationProc;->pushConverter(Lgnu/mapping/Procedure;)V

    .line 31
    :cond_0
    return-void
.end method

.method public static makeNamed(Lgnu/mapping/Symbol;Lgnu/mapping/Location;)Lgnu/mapping/LocationProc;
    .locals 7

    .prologue
    .line 21
    move-object v0, p0

    .local v0, "name":Lgnu/mapping/Symbol;
    move-object v1, p1

    .local v1, "loc":Lgnu/mapping/Location;
    new-instance v3, Lgnu/mapping/LocationProc;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v1

    invoke-direct {v4, v5}, Lgnu/mapping/LocationProc;-><init>(Lgnu/mapping/Location;)V

    move-object v2, v3

    .line 22
    .local v2, "lproc":Lgnu/mapping/LocationProc;
    move-object v3, v2

    move-object v4, v0

    invoke-virtual {v3, v4}, Lgnu/mapping/LocationProc;->setSymbol(Ljava/lang/Object;)V

    .line 23
    move-object v3, v2

    move-object v0, v3

    .end local v0    # "name":Lgnu/mapping/Symbol;
    return-object v0
.end method


# virtual methods
.method public apply0()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 40
    move-object v0, p0

    .local v0, "this":Lgnu/mapping/LocationProc;
    move-object v1, v0

    iget-object v1, v1, Lgnu/mapping/LocationProc;->loc:Lgnu/mapping/Location;

    invoke-virtual {v1}, Lgnu/mapping/Location;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lgnu/mapping/LocationProc;
    return-object v0
.end method

.method public apply1(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 45
    move-object v0, p0

    .local v0, "this":Lgnu/mapping/LocationProc;
    move-object v1, p1

    .local v1, "value":Ljava/lang/Object;
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Lgnu/mapping/LocationProc;->set0(Ljava/lang/Object;)V

    .line 46
    sget-object v2, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    move-object v0, v2

    .end local v0    # "this":Lgnu/mapping/LocationProc;
    return-object v0
.end method

.method public final getLocation()Lgnu/mapping/Location;
    .locals 2

    .prologue
    .line 61
    move-object v0, p0

    .local v0, "this":Lgnu/mapping/LocationProc;
    move-object v1, v0

    iget-object v1, v1, Lgnu/mapping/LocationProc;->loc:Lgnu/mapping/Location;

    move-object v0, v1

    .end local v0    # "this":Lgnu/mapping/LocationProc;
    return-object v0
.end method

.method public getSetter()Lgnu/mapping/Procedure;
    .locals 5

    .prologue
    .line 56
    move-object v0, p0

    .local v0, "this":Lgnu/mapping/LocationProc;
    new-instance v1, Lgnu/mapping/Setter0;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    move-object v3, v0

    invoke-direct {v2, v3}, Lgnu/mapping/Setter0;-><init>(Lgnu/mapping/Procedure;)V

    move-object v0, v1

    .end local v0    # "this":Lgnu/mapping/LocationProc;
    return-object v0
.end method

.method public pushConverter(Lgnu/mapping/Procedure;)V
    .locals 5

    .prologue
    .line 35
    move-object v0, p0

    .local v0, "this":Lgnu/mapping/LocationProc;
    move-object v1, p1

    .local v1, "converter":Lgnu/mapping/Procedure;
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Lgnu/mapping/LocationProc;->loc:Lgnu/mapping/Location;

    move-object v4, v1

    invoke-static {v3, v4}, Lgnu/mapping/ConstrainedLocation;->make(Lgnu/mapping/Location;Lgnu/mapping/Procedure;)Lgnu/mapping/ConstrainedLocation;

    move-result-object v3

    iput-object v3, v2, Lgnu/mapping/LocationProc;->loc:Lgnu/mapping/Location;

    .line 36
    return-void
.end method

.method public set0(Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 51
    move-object v0, p0

    .local v0, "this":Lgnu/mapping/LocationProc;
    move-object v1, p1

    .local v1, "value":Ljava/lang/Object;
    move-object v2, v0

    iget-object v2, v2, Lgnu/mapping/LocationProc;->loc:Lgnu/mapping/Location;

    move-object v3, v1

    invoke-virtual {v2, v3}, Lgnu/mapping/Location;->set(Ljava/lang/Object;)V

    .line 52
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 66
    move-object v0, p0

    .local v0, "this":Lgnu/mapping/LocationProc;
    move-object v2, v0

    invoke-virtual {v2}, Lgnu/mapping/LocationProc;->getSymbol()Ljava/lang/Object;

    move-result-object v2

    move-object v1, v2

    .line 67
    .local v1, "n":Ljava/lang/Object;
    move-object v2, v1

    if-eqz v2, :cond_0

    .line 68
    move-object v2, v0

    invoke-super {v2}, Lgnu/mapping/Procedure0or1;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    .line 69
    .end local v0    # "this":Lgnu/mapping/LocationProc;
    :goto_0
    return-object v0

    .restart local v0    # "this":Lgnu/mapping/LocationProc;
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "#<location-proc "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object v3, v0

    iget-object v3, v3, Lgnu/mapping/LocationProc;->loc:Lgnu/mapping/Location;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ">"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    goto :goto_0
.end method

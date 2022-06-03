.class public interface abstract annotation Lcom/google/appinventor/components/annotations/androidmanifest/ServiceElement;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/AnnotationDefault;
    value = .subannotation Lcom/google/appinventor/components/annotations/androidmanifest/ServiceElement;
        description = ""
        directBootAware = ""
        enabled = ""
        exported = ""
        foregroundServiceType = ""
        icon = ""
        intentFilters = {}
        isolatedProcess = ""
        label = ""
        metaDataElements = {}
        permission = ""
        process = ""
    .end subannotation
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->RUNTIME:Ljava/lang/annotation/RetentionPolicy;
.end annotation

.annotation runtime Ljava/lang/annotation/Target;
    value = {
        .enum Ljava/lang/annotation/ElementType;->TYPE:Ljava/lang/annotation/ElementType;
    }
.end annotation


# virtual methods
.method public abstract description()Ljava/lang/String;
.end method

.method public abstract directBootAware()Ljava/lang/String;
.end method

.method public abstract enabled()Ljava/lang/String;
.end method

.method public abstract exported()Ljava/lang/String;
.end method

.method public abstract foregroundServiceType()Ljava/lang/String;
.end method

.method public abstract icon()Ljava/lang/String;
.end method

.method public abstract intentFilters()[Lcom/google/appinventor/components/annotations/androidmanifest/IntentFilterElement;
.end method

.method public abstract isolatedProcess()Ljava/lang/String;
.end method

.method public abstract label()Ljava/lang/String;
.end method

.method public abstract metaDataElements()[Lcom/google/appinventor/components/annotations/androidmanifest/MetaDataElement;
.end method

.method public abstract name()Ljava/lang/String;
.end method

.method public abstract permission()Ljava/lang/String;
.end method

.method public abstract process()Ljava/lang/String;
.end method

.class public Lcom/android/camera/module/impl/component/ConfigChangeImpl$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/camera/fragment/manually/ManuallyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/module/impl/component/ConfigChangeImpl;->configScene(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/camera/module/impl/component/ConfigChangeImpl;

.field public final synthetic val$moduleOptional:Ljava/util/Optional;


# direct methods
.method public constructor <init>(Lcom/android/camera/module/impl/component/ConfigChangeImpl;Ljava/util/Optional;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/module/impl/component/ConfigChangeImpl$2;->this$0:Lcom/android/camera/module/impl/component/ConfigChangeImpl;

    iput-object p2, p0, Lcom/android/camera/module/impl/component/ConfigChangeImpl$2;->val$moduleOptional:Ljava/util/Optional;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onManuallyDataChanged(Lcom/android/camera/data/data/ComponentData;Ljava/lang/String;Ljava/lang/String;ZI)V
    .locals 0

    iget-object p1, p0, Lcom/android/camera/module/impl/component/ConfigChangeImpl$2;->val$moduleOptional:Ljava/util/Optional;

    invoke-virtual {p1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/camera/module/BaseModule;

    invoke-virtual {p1}, Lcom/android/camera/module/BaseModule;->onSharedPreferenceChanged()V

    iget-object p1, p0, Lcom/android/camera/module/impl/component/ConfigChangeImpl$2;->val$moduleOptional:Ljava/util/Optional;

    invoke-virtual {p1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/camera/module/BaseModule;

    const/4 p2, 0x1

    new-array p2, p2, [I

    const/4 p3, 0x0

    const/4 p4, 0x4

    aput p4, p2, p3

    invoke-virtual {p1, p2}, Lcom/android/camera/module/BaseModule;->updatePreferenceInWorkThread([I)V

    return-void
.end method

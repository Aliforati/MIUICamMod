.class public Lcom/android/camera/module/loader/camera2/Camera2CompatAdapterRole;
.super Lcom/android/camera/module/loader/camera2/Camera2CompatAdapter;
.source ""


# static fields
.field public static final BOKEH_ROLE_ID:I = 0x3d

.field public static final DEPTH_ROLE_ID:I = 0x19

.field public static final FRONT_AUX_ROLE_ID:I = 0x28

.field public static final FRONT_BOKEH_ROLE_ID:I = 0x51

.field public static final FRONT_SAT_ROLE_ID:I = 0x50

.field public static final MACRO_2X_ROLE_ID:I = 0x18

.field public static final MACRO_ROLE_ID:I = 0x16

.field public static final MAIN_BACK_ROLE_ID:I = 0x0

.field public static final MAIN_FRONT_ROLE_ID:I = 0x1

.field public static final PARALLEL_VIRTUAL_ROLE_ID:I = 0x66

.field public static final PHOTO_SAT_ROLE_ID:I = 0x3c

.field public static final PIP_ROLE_ID:I = 0x40

.field public static final TAG:Ljava/lang/String; = "Camera2CompatAdapterRole"

.field public static final TELE_4X_ROLE_ID:I = 0x17

.field public static final TELE_ROLE_ID:I = 0x14

.field public static final ULTRA_WIDE_BOKEH_ROLE_ID:I = 0x3f

.field public static final ULTRA_WIDE_ROLE_ID:I = 0x15

.field public static final VIDEO_SAT_ROLE_ID:I = 0x3e

.field public static final VIRTUAL_BACK_ROLE_ID:I = 0x64

.field public static final VIRTUAL_FRONT_ROLE_ID:I = 0x65


# instance fields
.field public volatile mCameraRoleIdMap:Landroid/util/SparseIntArray;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/module/loader/camera2/Camera2CompatAdapter;-><init>()V

    return-void
.end method

.method private dumpCameraIds()V
    .locals 11

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Lcom/android/camera/module/loader/camera2/Camera2CompatAdapterRole;->mCameraRoleIdMap:Landroid/util/SparseIntArray;

    invoke-virtual {v2}, Landroid/util/SparseIntArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lcom/android/camera/module/loader/camera2/Camera2CompatAdapterRole;->mCameraRoleIdMap:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v2

    iget-object v3, p0, Lcom/android/camera/module/loader/camera2/Camera2CompatAdapterRole;->mCameraRoleIdMap:Landroid/util/SparseIntArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v3

    iget-object v4, p0, Lcom/android/camera/module/loader/camera2/Camera2CompatAdapter;->mCapabilities:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/camera2/CameraCapabilities;

    invoke-virtual {v4}, Lcom/android/camera2/CameraCapabilities;->getPhysicalCameraIds()Ljava/util/Set;

    move-result-object v4

    iget-object v5, p0, Lcom/android/camera/module/loader/camera2/Camera2CompatAdapter;->mCapabilities:Landroid/util/SparseArray;

    invoke-virtual {v5, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/camera2/CameraCapabilities;

    invoke-virtual {v5, v0}, Lcom/android/camera2/CameraCapabilities;->getViewAngle(Z)F

    move-result v5

    const/4 v6, 0x2

    const/4 v7, 0x3

    const/4 v8, 0x1

    if-eqz v4, :cond_0

    invoke-interface {v4}, Ljava/util/Set;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_0

    sget-object v9, Lcom/android/camera/module/loader/camera2/Camera2CompatAdapterRole;->TAG:Ljava/lang/String;

    const/4 v10, 0x4

    new-array v10, v10, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v10, v0

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    aput-object v2, v10, v8

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v10, v6

    aput-object v4, v10, v7

    const-string/jumbo v2, "role: %3d (%5.1f\u00b0) <-> %2d = %s"

    invoke-static {v2, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v9, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_0
    sget-object v4, Lcom/android/camera/module/loader/camera2/Camera2CompatAdapterRole;->TAG:Ljava/lang/String;

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v7, v0

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    aput-object v2, v7, v8

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v7, v6

    const-string/jumbo v2, "role: %3d (%5.1f\u00b0) <-> %2d"

    invoke-static {v2, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public declared-synchronized getAuxCameraId()I
    .locals 3

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/android/camera/module/loader/camera2/Camera2CompatAdapterRole;->isInitialized()Z

    move-result v0

    const/4 v1, -0x1

    if-nez v0, :cond_0

    sget-object v0, Lcom/android/camera/module/loader/camera2/Camera2CompatAdapterRole;->TAG:Ljava/lang/String;

    const-string v2, "Warning: getAuxCameraId(): #init() failed."

    invoke-static {v0, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v1

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/camera/module/loader/camera2/Camera2CompatAdapterRole;->mCameraRoleIdMap:Landroid/util/SparseIntArray;

    const/16 v2, 0x14

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getAuxFrontCameraId()I
    .locals 3

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/android/camera/module/loader/camera2/Camera2CompatAdapterRole;->isInitialized()Z

    move-result v0

    const/4 v1, -0x1

    if-nez v0, :cond_0

    sget-object v0, Lcom/android/camera/module/loader/camera2/Camera2CompatAdapterRole;->TAG:Ljava/lang/String;

    const-string v2, "Warning: getAuxFrontCameraId(): #init() failed."

    invoke-static {v0, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v1

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/camera/module/loader/camera2/Camera2CompatAdapterRole;->mCameraRoleIdMap:Landroid/util/SparseIntArray;

    const/16 v2, 0x28

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getBokehCameraId()I
    .locals 3

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/android/camera/module/loader/camera2/Camera2CompatAdapterRole;->isInitialized()Z

    move-result v0

    const/4 v1, -0x1

    if-nez v0, :cond_0

    sget-object v0, Lcom/android/camera/module/loader/camera2/Camera2CompatAdapterRole;->TAG:Ljava/lang/String;

    const-string v2, "Warning: getBokehCameraId(): #init() failed."

    invoke-static {v0, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v1

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/camera/module/loader/camera2/Camera2CompatAdapterRole;->mCameraRoleIdMap:Landroid/util/SparseIntArray;

    const/16 v2, 0x3d

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getBokehDepthCameraId()I
    .locals 3

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/android/camera/module/loader/camera2/Camera2CompatAdapterRole;->isInitialized()Z

    move-result v0

    const/4 v1, -0x1

    if-nez v0, :cond_0

    sget-object v0, Lcom/android/camera/module/loader/camera2/Camera2CompatAdapterRole;->TAG:Ljava/lang/String;

    const-string v2, "Warning: getBokehDepthCameraId(): #init() failed."

    invoke-static {v0, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v1

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/camera/module/loader/camera2/Camera2CompatAdapterRole;->mCameraRoleIdMap:Landroid/util/SparseIntArray;

    const/16 v2, 0x19

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getBokehFrontCameraId()I
    .locals 3

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/android/camera/module/loader/camera2/Camera2CompatAdapterRole;->isInitialized()Z

    move-result v0

    const/4 v1, -0x1

    if-nez v0, :cond_0

    sget-object v0, Lcom/android/camera/module/loader/camera2/Camera2CompatAdapterRole;->TAG:Ljava/lang/String;

    const-string v2, "Warning: getBokehFrontCameraId(): #init() failed."

    invoke-static {v0, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v1

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/camera/module/loader/camera2/Camera2CompatAdapterRole;->mCameraRoleIdMap:Landroid/util/SparseIntArray;

    const/16 v2, 0x51

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getDefaultDualVideoCameraIds()Ljava/util/concurrent/ConcurrentHashMap;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Lcom/android/camera/dualvideo/util/RenderSourceType;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    invoke-static {}, LOooO0O0/OooO0o0/OooO00o/OooO0O0;->o0O00O()LOooO0O0/OooO0o0/OooO00o/OooO0O0;

    move-result-object v1

    invoke-virtual {v1}, LOooO0O0/OooO0o0/OooO00o/OooO0O0;->o00O000()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/camera/dualvideo/util/RenderSourceType;->MAIN_SOURCE:Lcom/android/camera/dualvideo/util/RenderSourceType;

    invoke-virtual {p0}, Lcom/android/camera/module/loader/camera2/Camera2CompatAdapterRole;->getUltraWideCameraId()I

    move-result v2

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/android/camera/dualvideo/util/RenderSourceType;->MAIN_SOURCE:Lcom/android/camera/dualvideo/util/RenderSourceType;

    invoke-virtual {p0}, Lcom/android/camera/module/loader/camera2/Camera2CompatAdapterRole;->getMainBackCameraId()I

    move-result v2

    :goto_0
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/android/camera/dualvideo/util/RenderSourceType;->SUB_SOURCE:Lcom/android/camera/dualvideo/util/RenderSourceType;

    invoke-virtual {p0}, Lcom/android/camera/module/loader/camera2/Camera2CompatAdapterRole;->getFrontCameraId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public declared-synchronized getFrontCameraId()I
    .locals 3

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/android/camera/module/loader/camera2/Camera2CompatAdapterRole;->isInitialized()Z

    move-result v0

    const/4 v1, -0x1

    if-nez v0, :cond_0

    sget-object v0, Lcom/android/camera/module/loader/camera2/Camera2CompatAdapterRole;->TAG:Ljava/lang/String;

    const-string v2, "Warning: getFrontCameraId(): #init() failed."

    invoke-static {v0, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v1

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/camera/module/loader/camera2/Camera2CompatAdapterRole;->mCameraRoleIdMap:Landroid/util/SparseIntArray;

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getMainBackCameraId()I
    .locals 3

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/android/camera/module/loader/camera2/Camera2CompatAdapterRole;->isInitialized()Z

    move-result v0

    const/4 v1, -0x1

    if-nez v0, :cond_0

    sget-object v0, Lcom/android/camera/module/loader/camera2/Camera2CompatAdapterRole;->TAG:Ljava/lang/String;

    const-string v2, "Warning: getMainBackCameraId(): #init() failed."

    invoke-static {v0, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v1

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/camera/module/loader/camera2/Camera2CompatAdapterRole;->mCameraRoleIdMap:Landroid/util/SparseIntArray;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getParallelVirtualCameraId()I
    .locals 3

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/android/camera/module/loader/camera2/Camera2CompatAdapterRole;->isInitialized()Z

    move-result v0

    const/4 v1, -0x1

    if-nez v0, :cond_0

    sget-object v0, Lcom/android/camera/module/loader/camera2/Camera2CompatAdapterRole;->TAG:Ljava/lang/String;

    const-string v2, "Warning: getParallelVirtualCameraId(): #init() failed."

    invoke-static {v0, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v1

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/camera/module/loader/camera2/Camera2CompatAdapterRole;->mCameraRoleIdMap:Landroid/util/SparseIntArray;

    const/16 v2, 0x66

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getRoleIdByActualId(I)I
    .locals 2

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/android/camera/module/loader/camera2/Camera2CompatAdapterRole;->isInitialized()Z

    move-result v0

    const/4 v1, -0x1

    if-nez v0, :cond_0

    sget-object p1, Lcom/android/camera/module/loader/camera2/Camera2CompatAdapterRole;->TAG:Ljava/lang/String;

    const-string v0, "Warning: getRoleIdByActualId(): #init() failed."

    invoke-static {p1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v1

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/camera/module/loader/camera2/Camera2CompatAdapterRole;->mCameraRoleIdMap:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseIntArray;->indexOfValue(I)I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-gez p1, :cond_1

    monitor-exit p0

    return v1

    :cond_1
    :try_start_2
    iget-object v0, p0, Lcom/android/camera/module/loader/camera2/Camera2CompatAdapterRole;->mCameraRoleIdMap:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getSATCameraId()I
    .locals 3

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/android/camera/module/loader/camera2/Camera2CompatAdapterRole;->isInitialized()Z

    move-result v0

    const/4 v1, -0x1

    if-nez v0, :cond_0

    sget-object v0, Lcom/android/camera/module/loader/camera2/Camera2CompatAdapterRole;->TAG:Ljava/lang/String;

    const-string v2, "Warning: getSATCameraId(): #init() failed."

    invoke-static {v0, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v1

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/camera/module/loader/camera2/Camera2CompatAdapterRole;->mCameraRoleIdMap:Landroid/util/SparseIntArray;

    const/16 v2, 0x3c

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getSATFrontCameraId()I
    .locals 3

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/android/camera/module/loader/camera2/Camera2CompatAdapterRole;->isInitialized()Z

    move-result v0

    const/4 v1, -0x1

    if-nez v0, :cond_0

    sget-object v0, Lcom/android/camera/module/loader/camera2/Camera2CompatAdapterRole;->TAG:Ljava/lang/String;

    const-string v2, "Warning: getSATFrontCameraId(): #init() failed."

    invoke-static {v0, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v1

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/camera/module/loader/camera2/Camera2CompatAdapterRole;->mCameraRoleIdMap:Landroid/util/SparseIntArray;

    const/16 v2, 0x50

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getStandaloneMacroCameraId()I
    .locals 5

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/android/camera/module/loader/camera2/Camera2CompatAdapterRole;->isInitialized()Z

    move-result v0

    const/4 v1, -0x1

    if-nez v0, :cond_0

    sget-object v0, Lcom/android/camera/module/loader/camera2/Camera2CompatAdapterRole;->TAG:Ljava/lang/String;

    const-string v2, "Warning: getStandaloneMacroCameraId(): #init() failed."

    invoke-static {v0, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v1

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/camera/module/loader/camera2/Camera2CompatAdapterRole;->mCameraRoleIdMap:Landroid/util/SparseIntArray;

    const/16 v2, 0x16

    iget-object v3, p0, Lcom/android/camera/module/loader/camera2/Camera2CompatAdapterRole;->mCameraRoleIdMap:Landroid/util/SparseIntArray;

    const/16 v4, 0x18

    invoke-virtual {v3, v4, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result v1

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getUltraTeleCameraId()I
    .locals 3

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/android/camera/module/loader/camera2/Camera2CompatAdapterRole;->isInitialized()Z

    move-result v0

    const/4 v1, -0x1

    if-nez v0, :cond_0

    sget-object v0, Lcom/android/camera/module/loader/camera2/Camera2CompatAdapterRole;->TAG:Ljava/lang/String;

    const-string v2, "Warning: getUltraTeleCameraId(): #init() failed."

    invoke-static {v0, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v1

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/camera/module/loader/camera2/Camera2CompatAdapterRole;->mCameraRoleIdMap:Landroid/util/SparseIntArray;

    const/16 v2, 0x17

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getUltraWideBokehCameraId()I
    .locals 3

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/android/camera/module/loader/camera2/Camera2CompatAdapterRole;->isInitialized()Z

    move-result v0

    const/4 v1, -0x1

    if-nez v0, :cond_0

    sget-object v0, Lcom/android/camera/module/loader/camera2/Camera2CompatAdapterRole;->TAG:Ljava/lang/String;

    const-string v2, "Warning: getUltraWideBokehCameraId(): #init() failed."

    invoke-static {v0, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v1

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/camera/module/loader/camera2/Camera2CompatAdapterRole;->mCameraRoleIdMap:Landroid/util/SparseIntArray;

    const/16 v2, 0x3f

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getUltraWideCameraId()I
    .locals 3

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/android/camera/module/loader/camera2/Camera2CompatAdapterRole;->isInitialized()Z

    move-result v0

    const/4 v1, -0x1

    if-nez v0, :cond_0

    sget-object v0, Lcom/android/camera/module/loader/camera2/Camera2CompatAdapterRole;->TAG:Ljava/lang/String;

    const-string v2, "Warning: getUltraWideCameraId(): #init() failed."

    invoke-static {v0, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v1

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/camera/module/loader/camera2/Camera2CompatAdapterRole;->mCameraRoleIdMap:Landroid/util/SparseIntArray;

    const/16 v2, 0x15

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getVideoSATCameraId()I
    .locals 3

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/android/camera/module/loader/camera2/Camera2CompatAdapterRole;->isInitialized()Z

    move-result v0

    const/4 v1, -0x1

    if-nez v0, :cond_0

    sget-object v0, Lcom/android/camera/module/loader/camera2/Camera2CompatAdapterRole;->TAG:Ljava/lang/String;

    const-string v2, "Warning: getVideoSATCameraId(): #init() failed."

    invoke-static {v0, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v1

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/camera/module/loader/camera2/Camera2CompatAdapterRole;->mCameraRoleIdMap:Landroid/util/SparseIntArray;

    const/16 v2, 0x3e

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getVirtualBackCameraId()I
    .locals 3

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/android/camera/module/loader/camera2/Camera2CompatAdapterRole;->isInitialized()Z

    move-result v0

    const/4 v1, -0x1

    if-nez v0, :cond_0

    sget-object v0, Lcom/android/camera/module/loader/camera2/Camera2CompatAdapterRole;->TAG:Ljava/lang/String;

    const-string v2, "Warning: getVirtualBackCameraId(): #init() failed."

    invoke-static {v0, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v1

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/camera/module/loader/camera2/Camera2CompatAdapterRole;->mCameraRoleIdMap:Landroid/util/SparseIntArray;

    const/16 v2, 0x64

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getVirtualFrontCameraId()I
    .locals 3

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/android/camera/module/loader/camera2/Camera2CompatAdapterRole;->isInitialized()Z

    move-result v0

    const/4 v1, -0x1

    if-nez v0, :cond_0

    sget-object v0, Lcom/android/camera/module/loader/camera2/Camera2CompatAdapterRole;->TAG:Ljava/lang/String;

    const-string v2, "Warning: getVirtualFrontCameraId(): #init() failed."

    invoke-static {v0, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v1

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/camera/module/loader/camera2/Camera2CompatAdapterRole;->mCameraRoleIdMap:Landroid/util/SparseIntArray;

    const/16 v2, 0x65

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized hasBokehCamera()Z
    .locals 3

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/android/camera/module/loader/camera2/Camera2CompatAdapterRole;->isInitialized()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    sget-object v0, Lcom/android/camera/module/loader/camera2/Camera2CompatAdapterRole;->TAG:Ljava/lang/String;

    const-string v2, "Warning: hasBokehCamera(): #init() failed."

    invoke-static {v0, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v1

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/camera/module/loader/camera2/Camera2CompatAdapterRole;->mCameraRoleIdMap:Landroid/util/SparseIntArray;

    const/16 v2, 0x3d

    invoke-virtual {v0, v2}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-ltz v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    monitor-exit p0

    return v1

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public hasPortraitCamera()Z
    .locals 1

    invoke-virtual {p0}, Lcom/android/camera/module/loader/camera2/Camera2CompatAdapterRole;->hasBokehCamera()Z

    move-result v0

    return v0
.end method

.method public declared-synchronized hasSATCamera()Z
    .locals 3

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/android/camera/module/loader/camera2/Camera2CompatAdapterRole;->isInitialized()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    sget-object v0, Lcom/android/camera/module/loader/camera2/Camera2CompatAdapterRole;->TAG:Ljava/lang/String;

    const-string v2, "Warning: hasSATCamera(): #init() failed."

    invoke-static {v0, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v1

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/camera/module/loader/camera2/Camera2CompatAdapterRole;->mCameraRoleIdMap:Landroid/util/SparseIntArray;

    const/16 v2, 0x3c

    invoke-virtual {v0, v2}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-ltz v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    monitor-exit p0

    return v1

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public hasTeleCamera()Z
    .locals 2

    invoke-virtual {p0}, Lcom/android/camera/module/loader/camera2/Camera2CompatAdapterRole;->getAuxCameraId()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/android/camera/module/loader/camera2/Camera2CompatAdapterRole;->getUltraTeleCameraId()I

    move-result v0

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public init(Landroid/hardware/camera2/CameraManager;)V
    .locals 10

    sget-object v0, Lcom/android/camera/module/loader/camera2/Camera2CompatAdapterRole;->TAG:Ljava/lang/String;

    const-string v1, "E: init()"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    invoke-virtual {p0}, Lcom/android/camera/module/loader/camera2/Camera2CompatAdapterRole;->reset()V

    invoke-virtual {p1}, Landroid/hardware/camera2/CameraManager;->getCameraIdList()[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    sget-object v2, Lcom/android/camera/module/loader/camera2/Camera2CompatAdapterRole;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "All available camera ids: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/util/Arrays;->deepToString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/android/camera/log/Log;->k(ILjava/lang/String;Ljava/lang/String;)I

    new-instance v1, Landroid/util/SparseArray;

    array-length v2, v0

    invoke-direct {v1, v2}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v1, p0, Lcom/android/camera/module/loader/camera2/Camera2CompatAdapter;->mCapabilities:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/SparseIntArray;

    array-length v2, v0

    invoke-direct {v1, v2}, Landroid/util/SparseIntArray;-><init>(I)V

    iput-object v1, p0, Lcom/android/camera/module/loader/camera2/Camera2CompatAdapterRole;->mCameraRoleIdMap:Landroid/util/SparseIntArray;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_2

    aget-object v4, v0, v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :try_start_2
    invoke-virtual {p1, v4}, Landroid/hardware/camera2/CameraManager;->getCameraCharacteristics(Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v4

    new-instance v6, Lcom/android/camera2/CameraCapabilities;

    invoke-direct {v6, v4, v5}, Lcom/android/camera2/CameraCapabilities;-><init>(Landroid/hardware/camera2/CameraCharacteristics;I)V

    iget-object v4, p0, Lcom/android/camera/module/loader/camera2/Camera2CompatAdapter;->mCapabilities:Landroid/util/SparseArray;

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    invoke-virtual {v6}, Lcom/android/camera2/CameraCapabilities;->getCameraRoleIds()[I

    move-result-object v4

    if-eqz v4, :cond_0

    array-length v6, v4

    move v7, v2

    :goto_1
    if-ge v7, v6, :cond_1

    aget v8, v4, v7

    iget-object v9, p0, Lcom/android/camera/module/loader/camera2/Camera2CompatAdapterRole;->mCameraRoleIdMap:Landroid/util/SparseIntArray;

    invoke-virtual {v9, v8, v5}, Landroid/util/SparseIntArray;->put(II)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_0
    invoke-virtual {v6}, Lcom/android/camera2/CameraCapabilities;->getCameraRoleId()I

    move-result v4

    iget-object v6, p0, Lcom/android/camera/module/loader/camera2/Camera2CompatAdapterRole;->mCameraRoleIdMap:Landroid/util/SparseIntArray;

    invoke-virtual {v6, v4, v5}, Landroid/util/SparseIntArray;->put(II)V

    goto :goto_2

    :catch_0
    sget-object v5, Lcom/android/camera/module/loader/camera2/Camera2CompatAdapterRole;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "non-integer camera id: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/android/camera/parallel/AlgoConnector;->getInstance()Lcom/android/camera/parallel/AlgoConnector;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/parallel/AlgoConnector;->getLocalBinder()Lcom/android/camera/LocalParallelService$LocalBinder;

    move-result-object p1

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Lcom/android/camera/module/loader/camera2/Camera2CompatAdapterRole;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lcom/android/camera/LocalParallelService$LocalBinder;->updateVirtualCameraIds()V

    :cond_3
    invoke-direct {p0}, Lcom/android/camera/module/loader/camera2/Camera2CompatAdapterRole;->dumpCameraIds()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_3

    :catch_1
    move-exception p1

    sget-object v0, Lcom/android/camera/module/loader/camera2/Camera2CompatAdapterRole;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to init Camera2RoleContainer: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/camera/module/loader/camera2/Camera2CompatAdapterRole;->reset()V

    :goto_3
    sget-object p1, Lcom/android/camera/module/loader/camera2/Camera2CompatAdapterRole;->TAG:Ljava/lang/String;

    const-string v0, "X: init()"

    invoke-static {p1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public isInitialized()Z
    .locals 2

    iget-object v0, p0, Lcom/android/camera/module/loader/camera2/Camera2CompatAdapter;->mCapabilities:Landroid/util/SparseArray;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/module/loader/camera2/Camera2CompatAdapter;->mCapabilities:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/module/loader/camera2/Camera2CompatAdapterRole;->mCameraRoleIdMap:Landroid/util/SparseIntArray;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/module/loader/camera2/Camera2CompatAdapterRole;->mCameraRoleIdMap:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/module/loader/camera2/Camera2CompatAdapterRole;->mCameraRoleIdMap:Landroid/util/SparseIntArray;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v0

    if-gez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public declared-synchronized isPartSAT()Z
    .locals 1

    monitor-enter p0

    monitor-exit p0

    const/4 v0, 0x0

    return v0
.end method

.method public declared-synchronized reset()V
    .locals 2

    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/android/camera/module/loader/camera2/Camera2CompatAdapterRole;->TAG:Ljava/lang/String;

    const-string v1, "E: reset()"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/camera/module/loader/camera2/Camera2CompatAdapter;->mCurrentOpenedCameraId:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/module/loader/camera2/Camera2CompatAdapter;->mCapabilities:Landroid/util/SparseArray;

    iput-object v0, p0, Lcom/android/camera/module/loader/camera2/Camera2CompatAdapterRole;->mCameraRoleIdMap:Landroid/util/SparseIntArray;

    sget-object v0, Lcom/android/camera/module/loader/camera2/Camera2CompatAdapterRole;->TAG:Ljava/lang/String;

    const-string v1, "X: reset()"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

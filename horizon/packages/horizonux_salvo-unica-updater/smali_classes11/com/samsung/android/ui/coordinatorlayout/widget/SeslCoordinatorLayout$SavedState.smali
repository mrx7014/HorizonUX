.class public Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout$SavedState;
.super Landroidx/customview/view/AbsSavedState;
.source "SeslCoordinatorLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "SavedState"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout$SavedState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public behaviorStates:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/os/Parcelable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 2278
    new-instance v0, Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout$SavedState$1;

    invoke-direct {v0}, Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout$SavedState$1;-><init>()V

    sput-object v0, Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout$SavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V
    .locals 7
    .param p1, "var1"    # Landroid/os/Parcel;
    .param p2, "var2"    # Ljava/lang/ClassLoader;

    .line 2294
    invoke-direct {p0, p1, p2}, Landroidx/customview/view/AbsSavedState;-><init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V

    .line 2295
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 2296
    .local v0, "var3":I
    new-array v1, v0, [I

    .line 2297
    .local v1, "var4":[I
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readIntArray([I)V

    .line 2298
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->readParcelableArray(Ljava/lang/ClassLoader;)[Landroid/os/Parcelable;

    move-result-object v2

    .line 2299
    .local v2, "var6":[Landroid/os/Parcelable;
    new-instance v3, Landroid/util/SparseArray;

    invoke-direct {v3, v0}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v3, p0, Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout$SavedState;->behaviorStates:Landroid/util/SparseArray;

    .line 2301
    const/4 v3, 0x0

    .local v3, "var5":I
    :goto_0
    if-ge v3, v0, :cond_0

    .line 2302
    iget-object v4, p0, Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout$SavedState;->behaviorStates:Landroid/util/SparseArray;

    aget v5, v1, v3

    aget-object v6, v2, v3

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 2301
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2305
    .end local v3    # "var5":I
    :cond_0
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcelable;)V
    .locals 0
    .param p1, "var1"    # Landroid/os/Parcelable;

    .line 2308
    invoke-direct {p0, p1}, Landroidx/customview/view/AbsSavedState;-><init>(Landroid/os/Parcelable;)V

    .line 2309
    return-void
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 6
    .param p1, "var1"    # Landroid/os/Parcel;
    .param p2, "var2"    # I

    .line 2312
    invoke-super {p0, p1, p2}, Landroidx/customview/view/AbsSavedState;->writeToParcel(Landroid/os/Parcel;I)V

    .line 2313
    iget-object v0, p0, Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout$SavedState;->behaviorStates:Landroid/util/SparseArray;

    .line 2314
    .local v0, "var3":Landroid/util/SparseArray;
    const/4 v1, 0x0

    .line 2316
    .local v1, "var4":I
    if-eqz v0, :cond_0

    .line 2317
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v2

    .local v2, "var5":I
    goto :goto_0

    .line 2319
    .end local v2    # "var5":I
    :cond_0
    const/4 v2, 0x0

    .line 2322
    .restart local v2    # "var5":I
    :goto_0
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2323
    new-array v3, v2, [I

    .line 2326
    .local v3, "var7":[I
    new-array v4, v2, [Landroid/os/Parcelable;

    .local v4, "var6":[Landroid/os/Parcelable;
    :goto_1
    if-ge v1, v2, :cond_1

    .line 2327
    iget-object v5, p0, Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout$SavedState;->behaviorStates:Landroid/util/SparseArray;

    invoke-virtual {v5, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v5

    aput v5, v3, v1

    .line 2328
    iget-object v5, p0, Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout$SavedState;->behaviorStates:Landroid/util/SparseArray;

    invoke-virtual {v5, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/Parcelable;

    aput-object v5, v4, v1

    .line 2326
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 2331
    :cond_1
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 2332
    invoke-virtual {p1, v4, p2}, Landroid/os/Parcel;->writeParcelableArray([Landroid/os/Parcelable;I)V

    .line 2333
    return-void
.end method

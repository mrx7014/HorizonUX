.class public Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout;
.super Landroid/view/ViewGroup;
.source "SeslCoordinatorLayout.java"

# interfaces
.implements Landroidx/core/view/NestedScrollingParent2;
.implements Landroidx/core/view/NestedScrollingParent3;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout$HierarchyChangeListener;,
        Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout$Behavior;,
        Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout$OnPreDrawListener;,
        Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout$LayoutParams;,
        Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout$AttachedBehavior;,
        Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout$DefaultBehavior;,
        Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout$SavedState;,
        Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout$ViewElevationComparator;
    }
.end annotation


# static fields
.field public static final CONSTRUCTOR_PARAMS:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field public static final TOP_SORTED_CHILDREN_COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field public static final WIDGET_PACKAGE_NAME:Ljava/lang/String;

.field public static final sConstructors:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Constructor<",
            "Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout$Behavior;",
            ">;>;>;"
        }
    .end annotation
.end field

.field public static final sRectPool:Landroidx/core/util/Pools$Pool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/core/util/Pools$Pool<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public mApplyWindowInsetsListener:Landroidx/core/view/OnApplyWindowInsetsListener;

.field public final mBehaviorConsumed:[I

.field public mBehaviorTouchView:Landroid/view/View;

.field public final mChildDag:Landroidx/coordinatorlayout/widget/DirectedAcyclicGraph;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/coordinatorlayout/widget/DirectedAcyclicGraph<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field public final mDependencySortedChildren:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field public mDisallowInterceptReset:Z

.field public mDrawStatusBarBackground:Z

.field public mIsAttachedToWindow:Z

.field public mKeylines:[I

.field public mLastInsets:Landroidx/core/view/WindowInsetsCompat;

.field public mLastNestedScrollingChild:Landroid/view/View;

.field public mNeedsPreDrawListener:Z

.field public final mNestedScrollingParentHelper:Landroidx/core/view/NestedScrollingParentHelper;

.field public mNestedScrollingTarget:Landroid/view/View;

.field public final mNestedScrollingV2ConsumedCompat:[I

.field public mOnHierarchyChangeListener:Landroid/view/ViewGroup$OnHierarchyChangeListener;

.field public mOnPreDrawListener:Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout$OnPreDrawListener;

.field public mScrimPaint:Landroid/graphics/Paint;

.field public mStatusBarBackground:Landroid/graphics/drawable/Drawable;

.field public final mTempDependenciesList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field public final mTempList1:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 97
    const-class v0, Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout;

    invoke-virtual {v0}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v0

    .line 99
    .local v0, "var0":Ljava/lang/Package;
    if-eqz v0, :cond_0

    .line 100
    invoke-virtual {v0}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object v1

    .local v1, "var1":Ljava/lang/String;
    goto :goto_0

    .line 102
    .end local v1    # "var1":Ljava/lang/String;
    :cond_0
    const/4 v1, 0x0

    .line 105
    .restart local v1    # "var1":Ljava/lang/String;
    :goto_0
    sput-object v1, Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout;->WIDGET_PACKAGE_NAME:Ljava/lang/String;

    .line 106
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-lt v2, v3, :cond_1

    .line 107
    new-instance v2, Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout$ViewElevationComparator;

    invoke-direct {v2}, Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout$ViewElevationComparator;-><init>()V

    sput-object v2, Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout;->TOP_SORTED_CHILDREN_COMPARATOR:Ljava/util/Comparator;

    goto :goto_1

    .line 109
    :cond_1
    const/4 v2, 0x0

    sput-object v2, Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout;->TOP_SORTED_CHILDREN_COMPARATOR:Ljava/util/Comparator;

    .line 112
    :goto_1
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Landroid/content/Context;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-class v4, Landroid/util/AttributeSet;

    aput-object v4, v2, v3

    sput-object v2, Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout;->CONSTRUCTOR_PARAMS:[Ljava/lang/Class;

    .line 113
    new-instance v2, Ljava/lang/ThreadLocal;

    invoke-direct {v2}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v2, Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout;->sConstructors:Ljava/lang/ThreadLocal;

    .line 114
    new-instance v2, Landroidx/core/util/Pools$SynchronizedPool;

    const/16 v3, 0xc

    invoke-direct {v2, v3}, Landroidx/core/util/Pools$SynchronizedPool;-><init>(I)V

    sput-object v2, Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout;->sRectPool:Landroidx/core/util/Pools$Pool;

    .line 115
    .end local v0    # "var0":Ljava/lang/Package;
    .end local v1    # "var1":Ljava/lang/String;
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "var1"    # Landroid/content/Context;

    .line 118
    const/4 v0, 0x0

    check-cast v0, Landroid/util/AttributeSet;

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 119
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "var1"    # Landroid/content/Context;
    .param p2, "var2"    # Landroid/util/AttributeSet;

    .line 122
    const v0, 0x7f0400f9

    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 123
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 7
    .param p1, "var1"    # Landroid/content/Context;
    .param p2, "var2"    # Landroid/util/AttributeSet;
    .param p3, "var3"    # I

    .line 127
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 128
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout;->mDependencySortedChildren:Ljava/util/List;

    .line 129
    new-instance v0, Landroidx/coordinatorlayout/widget/DirectedAcyclicGraph;

    invoke-direct {v0}, Landroidx/coordinatorlayout/widget/DirectedAcyclicGraph;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout;->mChildDag:Landroidx/coordinatorlayout/widget/DirectedAcyclicGraph;

    .line 130
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout;->mTempList1:Ljava/util/List;

    .line 131
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout;->mTempDependenciesList:Ljava/util/List;

    .line 132
    const/4 v0, 0x2

    new-array v1, v0, [I

    iput-object v1, p0, Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout;->mBehaviorConsumed:[I

    .line 133
    new-array v0, v0, [I

    iput-object v0, p0, Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout;->mNestedScrollingV2ConsumedCompat:[I

    .line 134
    new-instance v0, Landroidx/core/view/NestedScrollingParentHelper;

    invoke-direct {v0, p0}, Landroidx/core/view/NestedScrollingParentHelper;-><init>(Landroid/view/ViewGroup;)V

    iput-object v0, p0, Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout;->mNestedScrollingParentHelper:Landroidx/core/view/NestedScrollingParentHelper;

    .line 135
    const/4 v0, 0x0

    .line 137
    .local v0, "var4":B
    const/4 v1, 0x0

    if-nez p3, :cond_0

    .line 138
    sget-object v2, Lcom/mesalabs/ten/update/R$styleable;->SeslCoordinatorLayout:[I

    const v3, 0x7f1002e4

    invoke-virtual {p1, p2, v2, v1, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v2

    .local v2, "var9":Landroid/content/res/TypedArray;
    goto :goto_0

    .line 140
    .end local v2    # "var9":Landroid/content/res/TypedArray;
    :cond_0
    sget-object v2, Lcom/mesalabs/ten/update/R$styleable;->SeslCoordinatorLayout:[I

    invoke-virtual {p1, p2, v2, p3, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 143
    .restart local v2    # "var9":Landroid/content/res/TypedArray;
    :goto_0
    invoke-virtual {v2, v1, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p3

    .line 144
    if-eqz p3, :cond_1

    .line 145
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 146
    .local v1, "var7":Landroid/content/res/Resources;
    invoke-virtual {v1, p3}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout;->mKeylines:[I

    .line 147
    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->density:F

    .line 148
    .local v3, "var5":F
    iget-object v4, p0, Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout;->mKeylines:[I

    array-length v4, v4

    .line 150
    .local v4, "var6":I
    move p3, v0

    :goto_1
    if-ge p3, v4, :cond_1

    .line 151
    iget-object v5, p0, Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout;->mKeylines:[I

    .line 152
    .local v5, "var8":[I
    aget v6, v5, p3

    int-to-float v6, v6

    mul-float/2addr v6, v3

    float-to-int v6, v6

    aput v6, v5, p3

    .line 150
    .end local v5    # "var8":[I
    add-int/lit8 p3, p3, 0x1

    goto :goto_1

    .line 156
    .end local v1    # "var7":Landroid/content/res/Resources;
    .end local v3    # "var5":F
    .end local v4    # "var6":I
    :cond_1
    const/4 v1, 0x1

    invoke-virtual {v2, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout;->mStatusBarBackground:Landroid/graphics/drawable/Drawable;

    .line 157
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 158
    invoke-virtual {p0}, Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout;->setupForInsets()V

    .line 159
    new-instance v1, Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout$HierarchyChangeListener;

    invoke-direct {v1, p0}, Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout$HierarchyChangeListener;-><init>(Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout;)V

    invoke-super {p0, v1}, Landroid/view/ViewGroup;->setOnHierarchyChangeListener(Landroid/view/ViewGroup$OnHierarchyChangeListener;)V

    .line 160
    return-void
.end method

.method public static acquireTempRect()Landroid/graphics/Rect;
    .locals 3

    .line 163
    sget-object v0, Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout;->sRectPool:Landroidx/core/util/Pools$Pool;

    invoke-interface {v0}, Landroidx/core/util/Pools$Pool;->acquire()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    .line 164
    .local v0, "var0":Landroid/graphics/Rect;
    move-object v1, v0

    .line 165
    .local v1, "var1":Landroid/graphics/Rect;
    if-nez v0, :cond_0

    .line 166
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    move-object v1, v2

    .line 169
    :cond_0
    return-object v1
.end method

.method public static clamp(III)I
    .locals 1
    .param p0, "var0"    # I
    .param p1, "var1"    # I
    .param p2, "var2"    # I

    .line 173
    if-ge p0, p1, :cond_0

    .line 174
    return p1

    .line 176
    :cond_0
    if-le p0, p2, :cond_1

    move v0, p2

    goto :goto_0

    :cond_1
    move v0, p0

    :goto_0
    return v0
.end method

.method public static parseBehavior(Landroid/content/Context;Landroid/util/AttributeSet;Ljava/lang/String;)Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout$Behavior;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "attrs"    # Landroid/util/AttributeSet;
    .param p2, "name"    # Ljava/lang/String;

    .line 181
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 182
    const/4 v0, 0x0

    return-object v0

    .line 185
    :cond_0
    const-string v0, "."

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 186
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .local v0, "fullName":Ljava/lang/String;
    goto :goto_0

    .line 187
    .end local v0    # "fullName":Ljava/lang/String;
    :cond_1
    const/16 v0, 0x2e

    invoke-virtual {p2, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-ltz v1, :cond_2

    .line 188
    move-object v0, p2

    .restart local v0    # "fullName":Ljava/lang/String;
    goto :goto_0

    .line 190
    .end local v0    # "fullName":Ljava/lang/String;
    :cond_2
    sget-object v1, Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout;->WIDGET_PACKAGE_NAME:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_3
    move-object v0, p2

    .line 193
    .restart local v0    # "fullName":Ljava/lang/String;
    :goto_0
    :try_start_0
    sget-object v1, Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout;->sConstructors:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    .line 194
    .local v2, "constructors":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/reflect/Constructor<Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout$Behavior;>;>;"
    if-nez v2, :cond_4

    .line 195
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    move-object v2, v3

    .line 196
    invoke-virtual {v1, v2}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 198
    :cond_4
    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/reflect/Constructor;

    .line 199
    .local v1, "c":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout$Behavior;>;"
    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v1, :cond_5

    .line 200
    invoke-virtual {p0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v5

    invoke-static {v0, v4, v5}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v5

    .line 201
    .local v5, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout$Behavior;>;"
    sget-object v6, Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout;->CONSTRUCTOR_PARAMS:[Ljava/lang/Class;

    invoke-virtual {v5, v6}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v6

    move-object v1, v6

    .line 202
    invoke-virtual {v1, v3}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    .line 203
    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 205
    .end local v5    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout$Behavior;>;"
    :cond_5
    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    aput-object p0, v5, v4

    aput-object p1, v5, v3

    invoke-virtual {v1, v5}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout$Behavior;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    .line 206
    .end local v1    # "c":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout$Behavior;>;"
    .end local v2    # "constructors":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/reflect/Constructor<Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout$Behavior;>;>;"
    :catch_0
    move-exception v1

    .line 207
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could not inflate Behavior subclass "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public static releaseTempRect(Landroid/graphics/Rect;)V
    .locals 1
    .param p0, "var0"    # Landroid/graphics/Rect;

    .line 212
    invoke-virtual {p0}, Landroid/graphics/Rect;->setEmpty()V

    .line 213
    sget-object v0, Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout;->sRectPool:Landroidx/core/util/Pools$Pool;

    invoke-interface {v0, p0}, Landroidx/core/util/Pools$Pool;->release(Ljava/lang/Object;)Z

    .line 214
    return-void
.end method

.method public static resolveAnchoredChildGravity(I)I
    .locals 1
    .param p0, "var0"    # I

    .line 217
    move v0, p0

    .line 218
    .local v0, "var1":I
    if-nez p0, :cond_0

    .line 219
    const/16 v0, 0x11

    .line 222
    :cond_0
    return v0
.end method

.method public static resolveGravity(I)I
    .locals 2
    .param p0, "var0"    # I

    .line 226
    move v0, p0

    .line 227
    .local v0, "var1":I
    and-int/lit8 v1, p0, 0x7

    if-nez v1, :cond_0

    .line 228
    const v1, 0x800003

    or-int v0, p0, v1

    .line 231
    :cond_0
    move p0, v0

    .line 232
    and-int/lit8 v1, v0, 0x70

    if-nez v1, :cond_1

    .line 233
    or-int/lit8 p0, v0, 0x30

    .line 236
    :cond_1
    return p0
.end method

.method public static resolveKeylineGravity(I)I
    .locals 1
    .param p0, "var0"    # I

    .line 240
    move v0, p0

    .line 241
    .local v0, "var1":I
    if-nez p0, :cond_0

    .line 242
    const v0, 0x800035

    .line 245
    :cond_0
    return v0
.end method


# virtual methods
.method public addPreDrawListener()V
    .locals 2

    .line 249
    iget-boolean v0, p0, Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout;->mIsAttachedToWindow:Z

    if-eqz v0, :cond_1

    .line 250
    iget-object v0, p0, Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout;->mOnPreDrawListener:Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout$OnPreDrawListener;

    if-nez v0, :cond_0

    .line 251
    new-instance v0, Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout$OnPreDrawListener;

    invoke-direct {v0, p0}, Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout$OnPreDrawListener;-><init>(Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout;)V

    iput-object v0, p0, Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout;->mOnPreDrawListener:Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout$OnPreDrawListener;

    .line 254
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout;->mOnPreDrawListener:Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout$OnPreDrawListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 257
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout;->mNeedsPreDrawListener:Z

    .line 258
    return-void
.end method

.method public checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1
    .param p1, "var1"    # Landroid/view/ViewGroup$LayoutParams;

    .line 262
    instance-of v0, p1, Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout$LayoutParams;

    if-eqz v0, :cond_0

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 263
    const/4 v0, 0x1

    .local v0, "var2":Z
    goto :goto_0

    .line 265
    .end local v0    # "var2":Z
    :cond_0
    const/4 v0, 0x0

    .line 268
    .restart local v0    # "var2":Z
    :goto_0
    return v0
.end method

.method public final constrainChildRect(Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout$LayoutParams;Landroid/graphics/Rect;II)V
    .locals 6
    .param p1, "var1"    # Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout$LayoutParams;
    .param p2, "var2"    # Landroid/graphics/Rect;
    .param p3, "var3"    # I
    .param p4, "var4"    # I

    .line 272
    invoke-virtual {p0}, Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout;->getWidth()I

    move-result v0

    .line 273
    .local v0, "var5":I
    invoke-virtual {p0}, Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout;->getHeight()I

    move-result v1

    .line 274
    .local v1, "var6":I
    invoke-virtual {p0}, Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout;->getPaddingLeft()I

    move-result v2

    iget v3, p1, Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout$LayoutParams;->leftMargin:I

    add-int/2addr v2, v3

    iget v3, p2, Landroid/graphics/Rect;->left:I

    invoke-virtual {p0}, Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout;->getPaddingRight()I

    move-result v4

    sub-int v4, v0, v4

    sub-int/2addr v4, p3

    iget v5, p1, Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout$LayoutParams;->rightMargin:I

    sub-int/2addr v4, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 275
    invoke-virtual {p0}, Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout;->getPaddingTop()I

    move-result v2

    iget v3, p1, Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout$LayoutParams;->topMargin:I

    add-int/2addr v2, v3

    iget v3, p2, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0}, Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout;->getPaddingBottom()I

    move-result v4

    sub-int v4, v1, v4

    sub-int/2addr v4, p4

    iget v5, p1, Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout$LayoutParams;->bottomMargin:I

    sub-int/2addr v4, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 276
    add-int v2, p3, v0

    add-int v3, p4, v1

    invoke-virtual {p2, v0, v1, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 277
    return-void
.end method

.method public final dispatchApplyWindowInsetsToBehaviors(Landroidx/core/view/WindowInsetsCompat;)Landroidx/core/view/WindowInsetsCompat;
    .locals 6
    .param p1, "var1"    # Landroidx/core/view/WindowInsetsCompat;

    .line 280
    invoke-virtual {p1}, Landroidx/core/view/WindowInsetsCompat;->isConsumed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 281
    return-object p1

    .line 283
    :cond_0
    const/4 v0, 0x0

    .line 284
    .local v0, "var2":I
    invoke-virtual {p0}, Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout;->getChildCount()I

    move-result v1

    .line 288
    .local v1, "var3":I
    :goto_0
    move-object v2, p1

    .line 289
    .local v2, "var4":Landroidx/core/view/WindowInsetsCompat;
    if-lt v0, v1, :cond_1

    .line 290
    goto :goto_1

    .line 293
    :cond_1
    invoke-virtual {p0, v0}, Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 294
    .local v3, "var5":Landroid/view/View;
    move-object v2, p1

    .line 295
    invoke-static {v3}, Landroidx/core/view/ViewCompat;->getFitsSystemWindows(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 296
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout$LayoutParams;

    invoke-virtual {v4}, Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout$LayoutParams;->getBehavior()Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout$Behavior;

    move-result-object v4

    .line 297
    .local v4, "var6":Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout$Behavior;
    move-object v2, p1

    .line 298
    if-eqz v4, :cond_2

    .line 299
    invoke-virtual {v4, p0, v3, p1}, Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout$Behavior;->onApplyWindowInsets(Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout;Landroid/view/View;Landroidx/core/view/WindowInsetsCompat;)Landroidx/core/view/WindowInsetsCompat;

    move-result-object p1

    .line 300
    move-object v2, p1

    .line 301
    invoke-virtual {p1}, Landroidx/core/view/WindowInsetsCompat;->isConsumed()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 302
    move-object v2, p1

    .line 303
    nop

    .line 312
    .end local v3    # "var5":Landroid/view/View;
    .end local v4    # "var6":Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout$Behavior;
    :goto_1
    return-object v2

    .line 308
    .restart local v3    # "var5":Landroid/view/View;
    :cond_2
    add-int/lit8 v0, v0, 0x1

    .line 309
    move-object p1, v2

    .line 310
    .end local v3    # "var5":Landroid/view/View;
    goto :goto_0
.end method

.method public dispatchDependentViewsChanged(Landroid/view/View;)V
    .locals 4
    .param p1, "var1"    # Landroid/view/View;

    .line 317
    iget-object v0, p0, Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout;->mChildDag:Landroidx/coordinatorlayout/widget/DirectedAcyclicGraph;

    invoke-virtual {v0, p1}, Landroidx/coordinatorlayout/widget/DirectedAcyclicGraph;->getIncomingEdges(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 318
    .local v0, "var2":Ljava/util/List;
    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 319
    const/4 v1, 0x0

    .local v1, "var3":I
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 320
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 321
    .local v2, "var4":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout$LayoutParams;

    invoke-virtual {v3}, Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout$LayoutParams;->getBehavior()Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout$Behavior;

    move-result-object v3

    .line 322
    .local v3, "var5":Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout$Behavior;
    if-eqz v3, :cond_0

    .line 323
    invoke-virtual {v3, p0, v2, p1}, Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout$Behavior;->onDependentViewChanged(Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout;Landroid/view/View;Landroid/view/View;)Z

    .line 319
    .end local v2    # "var4":Landroid/view/View;
    .end local v3    # "var5":Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout$Behavior;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 328
    .end local v1    # "var3":I
    :cond_1
    return-void
.end method

.method public dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 8
    .param p1, "var1"    # Landroid/view/MotionEvent;

    .line 331
    invoke-virtual {p0}, Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout;->getChildCount()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .local v0, "var2":I
    :goto_0
    if-ltz v0, :cond_4

    .line 332
    invoke-virtual {p0, v0}, Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 333
    .local v2, "var3":Landroid/view/View;
    instance-of v3, v2, Lcom/samsung/android/ui/coordinatorlayout/widget/ABLBehavior;

    if-eqz v3, :cond_3

    .line 334
    move-object v3, v2

    check-cast v3, Lcom/samsung/android/ui/coordinatorlayout/widget/ABLBehavior;

    .line 335
    .local v3, "var4":Lcom/samsung/android/ui/coordinatorlayout/widget/ABLBehavior;
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    const/16 v5, 0x8

    if-ne v4, v5, :cond_4

    .line 336
    iget-object v4, p0, Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout;->mLastNestedScrollingChild:Landroid/view/View;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0x9

    if-eqz v4, :cond_1

    .line 337
    invoke-virtual {p1, v7}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v4

    cmpg-float v4, v4, v6

    if-gez v4, :cond_0

    .line 338
    invoke-interface {v3, v5}, Lcom/samsung/android/ui/coordinatorlayout/widget/ABLBehavior;->seslSetExpanded(Z)V

    goto :goto_1

    .line 339
    :cond_0
    invoke-virtual {p1, v7}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v4

    cmpl-float v4, v4, v6

    if-lez v4, :cond_4

    iget-object v4, p0, Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout;->mLastNestedScrollingChild:Landroid/view/View;

    const/4 v5, -0x1

    invoke-virtual {v4, v5}, Landroid/view/View;->canScrollVertically(I)Z

    move-result v4

    if-nez v4, :cond_4

    .line 340
    invoke-interface {v3, v1}, Lcom/samsung/android/ui/coordinatorlayout/widget/ABLBehavior;->seslSetExpanded(Z)V

    goto :goto_1

    .line 342
    :cond_1
    invoke-virtual {p1, v7}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v4

    cmpg-float v4, v4, v6

    if-gez v4, :cond_2

    .line 343
    invoke-interface {v3, v5}, Lcom/samsung/android/ui/coordinatorlayout/widget/ABLBehavior;->seslSetExpanded(Z)V

    goto :goto_1

    .line 344
    :cond_2
    invoke-virtual {p1, v7}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v4

    cmpl-float v4, v4, v6

    if-lez v4, :cond_4

    .line 345
    invoke-interface {v3, v1}, Lcom/samsung/android/ui/coordinatorlayout/widget/ABLBehavior;->seslSetExpanded(Z)V

    goto :goto_1

    .line 331
    .end local v2    # "var3":Landroid/view/View;
    .end local v3    # "var4":Lcom/samsung/android/ui/coordinatorlayout/widget/ABLBehavior;
    :cond_3
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 352
    .end local v0    # "var2":I
    :cond_4
    :goto_1
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 5
    .param p1, "var1"    # Landroid/view/KeyEvent;

    .line 356
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v1, 0x3d

    if-eq v0, v1, :cond_0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v1, 0x13

    if-eq v0, v1, :cond_0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v1, 0x14

    if-eq v0, v1, :cond_0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v1, 0x15

    if-eq v0, v1, :cond_0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v1, 0x16

    if-ne v0, v1, :cond_2

    .line 357
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout;->getChildCount()I

    move-result v0

    .line 359
    .local v0, "var2":I
    const/4 v1, 0x0

    .local v1, "var3":I
    :goto_0
    if-ge v1, v0, :cond_2

    .line 360
    invoke-virtual {p0, v1}, Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 361
    .local v2, "var4":Landroid/view/View;
    instance-of v3, v2, Lcom/samsung/android/ui/coordinatorlayout/widget/ABLBehavior;

    if-eqz v3, :cond_1

    .line 362
    move-object v3, v2

    check-cast v3, Lcom/samsung/android/ui/coordinatorlayout/widget/ABLBehavior;

    .line 363
    .local v3, "var5":Lcom/samsung/android/ui/coordinatorlayout/widget/ABLBehavior;
    invoke-interface {v3}, Lcom/samsung/android/ui/coordinatorlayout/widget/ABLBehavior;->seslIsCollapsed()Z

    move-result v4

    if-nez v4, :cond_1

    .line 364
    const/4 v4, 0x0

    invoke-interface {v3, v4}, Lcom/samsung/android/ui/coordinatorlayout/widget/ABLBehavior;->seslSetExpanded(Z)V

    .line 365
    goto :goto_1

    .line 359
    .end local v2    # "var4":Landroid/view/View;
    .end local v3    # "var5":Lcom/samsung/android/ui/coordinatorlayout/widget/ABLBehavior;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 371
    .end local v0    # "var2":I
    .end local v1    # "var3":I
    :cond_2
    :goto_1
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 11
    .param p1, "var1"    # Landroid/graphics/Canvas;
    .param p2, "var2"    # Landroid/view/View;
    .param p3, "var3"    # J

    .line 375
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout$LayoutParams;

    .line 376
    .local v0, "var5":Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout$LayoutParams;
    iget-object v1, v0, Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout$LayoutParams;->mBehavior:Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout$Behavior;

    .line 377
    .local v1, "var6":Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout$Behavior;
    if-eqz v1, :cond_2

    .line 378
    invoke-virtual {v1, p0, p2}, Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout$Behavior;->getScrimOpacity(Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout;Landroid/view/View;)F

    move-result v2

    .line 379
    .local v2, "var7":F
    const/4 v3, 0x0

    cmpl-float v3, v2, v3

    if-lez v3, :cond_2

    .line 380
    iget-object v3, p0, Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout;->mScrimPaint:Landroid/graphics/Paint;

    if-nez v3, :cond_0

    .line 381
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    iput-object v3, p0, Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout;->mScrimPaint:Landroid/graphics/Paint;

    .line 384
    :cond_0
    iget-object v3, p0, Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout;->mScrimPaint:Landroid/graphics/Paint;

    iget-object v4, v0, Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout$LayoutParams;->mBehavior:Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout$Behavior;

    invoke-virtual {v4, p0, p2}, Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout$Behavior;->getScrimColor(Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout;Landroid/view/View;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 385
    iget-object v3, p0, Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout;->mScrimPaint:Landroid/graphics/Paint;

    const/high16 v4, 0x437f0000    # 255.0f

    mul-float/2addr v4, v2

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    const/4 v5, 0x0

    const/16 v6, 0xff

    invoke-static {v4, v5, v6}, Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout;->clamp(III)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 386
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v3

    .line 387
    .local v3, "var8":I
    invoke-virtual {p2}, Landroid/view/View;->isOpaque()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 388
    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result v4

    int-to-float v6, v4

    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v4

    int-to-float v7, v4

    invoke-virtual {p2}, Landroid/view/View;->getRight()I

    move-result v4

    int-to-float v8, v4

    invoke-virtual {p2}, Landroid/view/View;->getBottom()I

    move-result v4

    int-to-float v9, v4

    sget-object v10, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    move-object v5, p1

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->clipRect(FFFFLandroid/graphics/Region$Op;)Z

    .line 391
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout;->getPaddingLeft()I

    move-result v4

    int-to-float v6, v4

    invoke-virtual {p0}, Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout;->getPaddingTop()I

    move-result v4

    int-to-float v7, v4

    invoke-virtual {p0}, Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout;->getPaddingRight()I

    move-result v5

    sub-int/2addr v4, v5

    int-to-float v8, v4

    invoke-virtual {p0}, Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout;->getHeight()I

    move-result v4

    invoke-virtual {p0}, Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout;->getPaddingBottom()I

    move-result v5

    sub-int/2addr v4, v5

    int-to-float v9, v4

    iget-object v10, p0, Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout;->mScrimPaint:Landroid/graphics/Paint;

    move-object v5, p1

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 392
    invoke-virtual {p1, v3}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 396
    .end local v2    # "var7":F
    .end local v3    # "var8":I
    :cond_2
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v2

    return v2
.end method

.method public drawableStateChanged()V
    .locals 5

    .line 400
    invoke-super {p0}, Landroid/view/ViewGroup;->drawableStateChanged()V

    .line 401
    invoke-virtual {p0}, Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout;->getDrawableState()[I

    move-result-object v0

    .line 402
    .local v0, "var1":[I
    iget-object v1, p0, Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout;->mStatusBarBackground:Landroid/graphics/drawable/Drawable;

    .line 403
    .local v1, "var2":Landroid/graphics/drawable/Drawable;
    const/4 v2, 0x0

    .line 404
    .local v2, "var3":Z
    move v3, v2

    .line 405
    .local v3, "var4":Z
    if-eqz v1, :cond_0

    .line 406
    move v3, v2

    .line 407
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 408
    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result v4

    or-int/lit8 v3, v4, 0x0

    .line 412
    :cond_0
    if-eqz v3, :cond_1

    .line 413
    invoke-virtual {p0}, Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout;->invalidate()V

    .line 416
    :cond_1
    return-void
.end method

.method public ensurePreDrawListener()V
    .locals 5

    .line 419
    invoke-virtual {p0}, Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout;->getChildCount()I

    move-result v0

    .line 420
    .local v0, "var1":I
    const/4 v1, 0x0

    .line 421
    .local v1, "var2":Z
    const/4 v2, 0x0

    .line 425
    .local v2, "var3":I
    :goto_0
    move v3, v1

    .line 426
    .local v3, "var4":Z
    if-lt v2, v0, :cond_0

    .line 427
    goto :goto_1

    .line 430
    :cond_0
    invoke-virtual {p0, v2}, Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout;->hasDependencies(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 431
    const/4 v3, 0x1

    .line 432
    nop

    .line 438
    :goto_1
    iget-boolean v4, p0, Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout;->mNeedsPreDrawListener:Z

    if-eq v3, v4, :cond_2

    .line 439
    if-eqz v3, :cond_1

    .line 440
    invoke-virtual {p0}, Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout;->addPreDrawListener()V

    goto :goto_2

    .line 442
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout;->removePreDrawListener()V

    .line 446
    :cond_2
    :goto_2
    return-void

    .line 435
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public bridge synthetic generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .line 68
    invoke-virtual {p0}, Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout;->generateDefaultLayoutParams()Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method public generateDefaultLayoutParams()Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout$LayoutParams;
    .locals 2

    .line 449
    new-instance v0, Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    .line 68
    invoke-virtual {p0, p1}, Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout;->generateLayoutParams(Landroid/util/AttributeSet;)Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout$LayoutParams;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    .line 68
    invoke-virtual {p0, p1}, Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout$LayoutParams;

    move-result-object p1

    return-object p1
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout$LayoutParams;
    .locals 2
    .param p1, "var1"    # Landroid/util/AttributeSet;

    .line 453
    new-instance v0, Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout$LayoutParams;
    .locals 2
    .param p1, "var1"    # Landroid/view/ViewGroup$LayoutParams;

    .line 457
    instance-of v0, p1, Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout$LayoutParams;

    if-eqz v0, :cond_0

    .line 458
    new-instance v0, Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout$LayoutParams;

    move-object v1, p1

    check-cast v1, Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout$LayoutParams;

    invoke-direct {v0, v1}, Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout$LayoutParams;-><init>(Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout$LayoutParams;)V

    return-object v0

    .line 460
    :cond_0
    instance-of v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_1

    new-instance v0, Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout$LayoutParams;

    move-object v1, p1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {v0, v1}, Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout$LayoutParams;

    invoke-direct {v0, p1}, Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    :goto_0
    return-object v0
.end method

.method public getChildRect(Landroid/view/View;ZLandroid/graphics/Rect;)V
    .locals 4
    .param p1, "var1"    # Landroid/view/View;
    .param p2, "var2"    # Z
    .param p3, "var3"    # Landroid/graphics/Rect;

    .line 465
    invoke-virtual {p1}, Landroid/view/View;->isLayoutRequested()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_1

    .line 466
    if-eqz p2, :cond_0

    .line 467
    invoke-virtual {p0, p1, p3}, Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout;->getDescendantRect(Landroid/view/View;Landroid/graphics/Rect;)V

    goto :goto_0

    .line 469
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v2

    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v3

    invoke-virtual {p3, v0, v1, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_0

    .line 473
    :cond_1
    invoke-virtual {p3}, Landroid/graphics/Rect;->setEmpty()V

    .line 475
    :goto_0
    return-void
.end method

.method public getDependencies(Landroid/view/View;)Ljava/util/List;
    .locals 2
    .param p1, "var1"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            ")",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .line 478
    iget-object v0, p0, Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout;->mChildDag:Landroidx/coordinatorlayout/widget/DirectedAcyclicGraph;

    invoke-virtual {v0, p1}, Landroidx/coordinatorlayout/widget/DirectedAcyclicGraph;->getOutgoingEdges(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 479
    .local v0, "var2":Ljava/util/List;
    iget-object v1, p0, Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout;->mTempDependenciesList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 480
    if-eqz v0, :cond_0

    .line 481
    iget-object v1, p0, Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout;->mTempDependenciesList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 484
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout;->mTempDependenciesList:Ljava/util/List;

    return-object v1
.end method

.method public final getDependencySortedChildren()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .line 488
    invoke-virtual {p0}, Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout;->prepareChildren()V

    .line 489
    iget-object v0, p0, Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout;->mDependencySortedChildren:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getDependents(Landroid/view/View;)Ljava/util/List;
    .locals 2
    .param p1, "var1"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            ")",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .line 493
    iget-object v0, p0, Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout;->mChildDag:Landroidx/coordinatorlayout/widget/DirectedAcyclicGraph;

    invoke-virtual {v0, p1}, Landroidx/coordinatorlayout/widget/DirectedAcyclicGraph;->getIncomingEdges(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 494
    .local v0, "var2":Ljava/util/List;
    iget-object v1, p0, Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout;->mTempDependenciesList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 495
    if-eqz v0, :cond_0

    .line 496
    iget-object v1, p0, Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout;->mTempDependenciesList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 499
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout;->mTempDependenciesList:Ljava/util/List;

    return-object v1
.end method

.method public getDescendantRect(Landroid/view/View;Landroid/graphics/Rect;)V
    .locals 0
    .param p1, "var1"    # Landroid/view/View;
    .param p2, "var2"    # Landroid/graphics/Rect;

    .line 504
    invoke-static {p0, p1, p2}, Landroidx/coordinatorlayout/widget/ViewGroupUtils;->getDescendantRect(Landroid/view/ViewGroup;Landroid/view/View;Landroid/graphics/Rect;)V

    .line 505
    return-void
.end method

.method public getDesiredAnchoredChildRect(Landroid/view/View;ILandroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 11
    .param p1, "var1"    # Landroid/view/View;
    .param p2, "var2"    # I
    .param p3, "var3"    # Landroid/graphics/Rect;
    .param p4, "var4"    # Landroid/graphics/Rect;

    .line 508
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout$LayoutParams;

    .line 509
    .local v0, "var5":Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout$LayoutParams;
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    .line 510
    .local v9, "var6":I
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v10

    .line 511
    .local v10, "var7":I
    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, v0

    move v7, v9

    move v8, v10

    invoke-virtual/range {v1 .. v8}, Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout;->getDesiredAnchoredChildRectWithoutConstraints(Landroid/view/View;ILandroid/graphics/Rect;Landroid/graphics/Rect;Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout$LayoutParams;II)V

    .line 512
    invoke-virtual {p0, v0, p4, v9, v10}, Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout;->constrainChildRect(Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout$LayoutParams;Landroid/graphics/Rect;II)V

    .line 513
    return-void
.end method

.method public final getDesiredAnchoredChildRectWithoutConstraints(Landroid/view/View;ILandroid/graphics/Rect;Landroid/graphics/Rect;Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout$LayoutParams;II)V
    .locals 13
    .param p1, "var1"    # Landroid/view/View;
    .param p2, "var2"    # I
    .param p3, "var3"    # Landroid/graphics/Rect;
    .param p4, "var4"    # Landroid/graphics/Rect;
    .param p5, "var5"    # Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout$LayoutParams;
    .param p6, "var6"    # I
    .param p7, "var7"    # I

    .line 516
    move v0, p2

    move-object/from16 v1, p3

    move-object/from16 v2, p5

    iget v3, v2, Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout$LayoutParams;->gravity:I

    invoke-static {v3}, Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout;->resolveAnchoredChildGravity(I)I

    move-result v3

    invoke-static {v3, p2}, Landroidx/core/view/GravityCompat;->getAbsoluteGravity(II)I

    move-result v3

    .line 517
    .local v3, "var8":I
    iget v4, v2, Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout$LayoutParams;->anchorGravity:I

    invoke-static {v4}, Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout;->resolveGravity(I)I

    move-result v4

    invoke-static {v4, p2}, Landroidx/core/view/GravityCompat;->getAbsoluteGravity(II)I

    move-result v4

    .line 518
    .local v4, "var9":I
    and-int/lit8 v5, v3, 0x7

    .line 519
    .local v5, "var10":I
    and-int/lit8 v6, v3, 0x70

    .line 520
    .local v6, "var11":I
    and-int/lit8 v0, v4, 0x7

    .line 521
    .end local p2    # "var2":I
    .local v0, "var2":I
    and-int/lit8 v4, v4, 0x70

    .line 522
    const/4 v7, 0x5

    const/4 v8, 0x1

    if-eq v0, v8, :cond_1

    .line 523
    if-eq v0, v7, :cond_0

    .line 524
    iget v0, v1, Landroid/graphics/Rect;->left:I

    goto :goto_0

    .line 526
    :cond_0
    iget v0, v1, Landroid/graphics/Rect;->right:I

    goto :goto_0

    .line 529
    :cond_1
    iget v9, v1, Landroid/graphics/Rect;->left:I

    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Rect;->width()I

    move-result v10

    div-int/lit8 v10, v10, 0x2

    add-int v0, v9, v10

    .line 532
    :goto_0
    const/16 v9, 0x50

    const/16 v10, 0x10

    if-eq v4, v10, :cond_3

    .line 533
    if-eq v4, v9, :cond_2

    .line 534
    iget v4, v1, Landroid/graphics/Rect;->top:I

    goto :goto_1

    .line 536
    :cond_2
    iget v4, v1, Landroid/graphics/Rect;->bottom:I

    goto :goto_1

    .line 539
    :cond_3
    iget v11, v1, Landroid/graphics/Rect;->top:I

    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Rect;->height()I

    move-result v12

    div-int/lit8 v12, v12, 0x2

    add-int v4, v11, v12

    .line 542
    :goto_1
    if-eq v5, v8, :cond_4

    .line 543
    move v3, v0

    .line 544
    if-eq v5, v7, :cond_5

    .line 545
    sub-int v3, v0, p6

    goto :goto_2

    .line 548
    :cond_4
    div-int/lit8 v7, p6, 0x2

    sub-int v3, v0, v7

    .line 551
    :cond_5
    :goto_2
    if-eq v6, v10, :cond_6

    .line 552
    move v0, v4

    .line 553
    if-eq v6, v9, :cond_7

    .line 554
    sub-int v0, v4, p7

    goto :goto_3

    .line 557
    :cond_6
    div-int/lit8 v7, p7, 0x2

    sub-int v0, v4, v7

    .line 560
    :cond_7
    :goto_3
    add-int v7, p6, v3

    add-int v8, p7, v0

    move-object/from16 v9, p4

    invoke-virtual {v9, v3, v0, v7, v8}, Landroid/graphics/Rect;->set(IIII)V

    .line 561
    return-void
.end method

.method public final getKeyline(I)I
    .locals 5
    .param p1, "var1"    # I

    .line 564
    iget-object v0, p0, Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout;->mKeylines:[I

    .line 566
    .local v0, "var2":[I
    const/4 v1, 0x0

    const-string v2, "CoordinatorLayout"

    if-nez v0, :cond_0

    .line 567
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 568
    .local v3, "var3":Ljava/lang/StringBuilder;
    const-string v4, "No keylines defined for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 569
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 570
    const-string v4, " - attempted index lookup "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 571
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 572
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 573
    return v1

    .line 574
    .end local v3    # "var3":Ljava/lang/StringBuilder;
    :cond_0
    if-ltz p1, :cond_1

    array-length v3, v0

    if-ge p1, v3, :cond_1

    .line 575
    aget v1, v0, p1

    return v1

    .line 577
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 578
    .restart local v3    # "var3":Ljava/lang/StringBuilder;
    const-string v4, "Keyline index "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 579
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 580
    const-string v4, " out of range for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 581
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 582
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 583
    return v1
.end method

.method public getLastChildRect(Landroid/view/View;Landroid/graphics/Rect;)V
    .locals 1
    .param p1, "var1"    # Landroid/view/View;
    .param p2, "var2"    # Landroid/graphics/Rect;

    .line 588
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout$LayoutParams;

    invoke-virtual {v0}, Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout$LayoutParams;->getLastChildRect()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 589
    return-void
.end method

.method public final getLastWindowInsets()Landroidx/core/view/WindowInsetsCompat;
    .locals 1

    .line 592
    iget-object v0, p0, Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout;->mLastInsets:Landroidx/core/view/WindowInsetsCompat;

    return-object v0
.end method

.method public getNestedScrollAxes()I
    .locals 1

    .line 596
    iget-object v0, p0, Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout;->mNestedScrollingParentHelper:Landroidx/core/view/NestedScrollingParentHelper;

    invoke-virtual {v0}, Landroidx/core/view/NestedScrollingParentHelper;->getNestedScrollAxes()I

    move-result v0

    return v0
.end method

.method public getResolvedLayoutParams(Landroid/view/View;)Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout$LayoutParams;
    .locals 8
    .param p1, "var1"    # Landroid/view/View;

    .line 600
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout$LayoutParams;

    .line 601
    .local v0, "var2":Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout$LayoutParams;
    iget-boolean v1, v0, Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout$LayoutParams;->mBehaviorResolved:Z

    if-nez v1, :cond_5

    .line 602
    instance-of v1, p1, Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout$AttachedBehavior;

    const-string v2, "CoordinatorLayout"

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    .line 603
    move-object v1, p1

    check-cast v1, Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout$AttachedBehavior;

    invoke-interface {v1}, Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout$AttachedBehavior;->getBehavior()Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout$Behavior;

    move-result-object v1

    .line 604
    .local v1, "var6":Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout$Behavior;
    if-nez v1, :cond_0

    .line 605
    const-string v4, "Attached behavior class is null"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 608
    :cond_0
    invoke-virtual {v0, v1}, Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout$LayoutParams;->setBehavior(Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout$Behavior;)V

    .line 609
    iput-boolean v3, v0, Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout$LayoutParams;->mBehaviorResolved:Z

    .line 610
    .end local v1    # "var6":Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout$Behavior;
    goto :goto_3

    .line 611
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 615
    .local v1, "var3":Ljava/lang/Class;
    const/4 v4, 0x0

    .local v4, "var7":Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout$DefaultBehavior;
    :goto_0
    if-eqz v1, :cond_3

    .line 616
    const-class v5, Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout$DefaultBehavior;

    invoke-virtual {v1, v5}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout$DefaultBehavior;

    .line 617
    .local v5, "var4":Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout$DefaultBehavior;
    move-object v4, v5

    .line 618
    if-eqz v5, :cond_2

    .line 619
    goto :goto_1

    .line 622
    :cond_2
    invoke-virtual {v1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v1

    .line 615
    move-object v4, v5

    goto :goto_0

    .line 625
    .end local v5    # "var4":Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout$DefaultBehavior;
    :cond_3
    :goto_1
    if-eqz v4, :cond_4

    .line 627
    :try_start_0
    invoke-interface {v4}, Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout$DefaultBehavior;->value()Ljava/lang/Class;

    move-result-object v5

    const/4 v6, 0x0

    new-array v7, v6, [Ljava/lang/Class;

    invoke-virtual {v5, v7}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v5

    new-array v6, v6, [Ljava/lang/Object;

    invoke-virtual {v5, v6}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout$Behavior;

    invoke-virtual {v0, v5}, Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout$LayoutParams;->setBehavior(Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout$Behavior;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 634
    goto :goto_2

    .line 628
    :catch_0
    move-exception v5

    .line 629
    .local v5, "var5":Ljava/lang/Exception;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 630
    .local v6, "var8":Ljava/lang/StringBuilder;
    const-string v7, "Default behavior class "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 631
    invoke-interface {v4}, Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout$DefaultBehavior;->value()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 632
    const-string v7, " could not be instantiated. Did you forget a default constructor?"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 633
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 637
    .end local v5    # "var5":Ljava/lang/Exception;
    .end local v6    # "var8":Ljava/lang/StringBuilder;
    :cond_4
    :goto_2
    iput-boolean v3, v0, Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout$LayoutParams;->mBehaviorResolved:Z

    .line 641
    .end local v1    # "var3":Ljava/lang/Class;
    .end local v4    # "var7":Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout$DefaultBehavior;
    :cond_5
    :goto_3
    return-object v0
.end method

.method public getStatusBarBackground()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 645
    iget-object v0, p0, Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout;->mStatusBarBackground:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getSuggestedMinimumHeight()I
    .locals 3

    .line 649
    invoke-super {p0}, Landroid/view/ViewGroup;->getSuggestedMinimumHeight()I

    move-result v0

    invoke-virtual {p0}, Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout;->getPaddingTop()I

    move-result v1

    invoke-virtual {p0}, Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout;->getPaddingBottom()I

    move-result v2

    add-int/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method public getSuggestedMinimumWidth()I
    .locals 3

    .line 653
    invoke-super {p0}, Landroid/view/ViewGroup;->getSuggestedMinimumWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout;->getPaddingLeft()I

    move-result v1

    invoke-virtual {p0}, Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout;->getPaddingRight()I

    move-result v2

    add-int/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method public final getTopSortedChildren(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .line 657
    .local p1, "var1":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 658
    invoke-virtual {p0}, Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout;->isChildrenDrawingOrderEnabled()Z

    move-result v0

    .line 659
    .local v0, "var2":Z
    invoke-virtual {p0}, Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout;->getChildCount()I

    move-result v1

    .line 661
    .local v1, "var3":I
    add-int/lit8 v2, v1, -0x1

    .local v2, "var4":I
    :goto_0
    if-ltz v2, :cond_1

    .line 663
    if-eqz v0, :cond_0

    .line 664
    invoke-virtual {p0, v1, v2}, Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout;->getChildDrawingOrder(II)I

    move-result v3

    .local v3, "var5":I
    goto :goto_1

    .line 666
    .end local v3    # "var5":I
    :cond_0
    move v3, v2

    .line 669
    .restart local v3    # "var5":I
    :goto_1
    invoke-virtual {p0, v3}, Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-interface {p1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 661
    .end local v3    # "var5":I
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 672
    .end local v2    # "var4":I
    :cond_1
    sget-object v2, Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout;->TOP_SORTED_CHILDREN_COMPARATOR:Ljava/util/Comparator;

    .line 673
    .local v2, "var6":Ljava/util/Comparator;
    if-eqz v2, :cond_2

    .line 674
    invoke-static {p1, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 677
    :cond_2
    return-void
.end method

.method public final hasDependencies(Landroid/view/View;)Z
    .locals 1
    .param p1, "var1"    # Landroid/view/View;

    .line 681
    iget-object v0, p0, Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout;->mChildDag:Landroidx/coordinatorlayout/widget/DirectedAcyclicGraph;

    invoke-virtual {v0, p1}, Landroidx/coordinatorlayout/widget/DirectedAcyclicGraph;->hasOutgoingEdges(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isPointInChildBounds(Landroid/view/View;II)Z
    .locals 2
    .param p1, "var1"    # Landroid/view/View;
    .param p2, "var2"    # I
    .param p3, "var3"    # I

    .line 685
    invoke-static {}, Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout;->acquireTempRect()Landroid/graphics/Rect;

    move-result-object v0

    .line 686
    .local v0, "var4":Landroid/graphics/Rect;
    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout;->getDescendantRect(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 690
    :try_start_0
    invoke-virtual {v0, p2, p3}, Landroid/graphics/Rect;->contains(II)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 692
    .local v1, "var5":Z
    invoke-static {v0}, Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout;->releaseTempRect(Landroid/graphics/Rect;)V

    .line 693
    nop

    .line 695
    return v1

    .line 692
    .end local v1    # "var5":Z
    :catchall_0
    move-exception v1

    invoke-static {v0}, Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout;->releaseTempRect(Landroid/graphics/Rect;)V

    .line 693
    throw v1
.end method

.method public final layoutChild(Landroid/view/View;I)V
    .locals 9
    .param p1, "var1"    # Landroid/view/View;
    .param p2, "var2"    # I

    .line 699
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout$LayoutParams;

    .line 700
    .local v0, "var3":Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout$LayoutParams;
    invoke-static {}, Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout;->acquireTempRect()Landroid/graphics/Rect;

    move-result-object v7

    .line 701
    .local v7, "var4":Landroid/graphics/Rect;
    invoke-virtual {p0}, Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout;->getPaddingLeft()I

    move-result v1

    iget v2, v0, Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout$LayoutParams;->leftMargin:I

    add-int/2addr v1, v2

    invoke-virtual {p0}, Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout;->getPaddingTop()I

    move-result v2

    iget v3, v0, Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout$LayoutParams;->topMargin:I

    add-int/2addr v2, v3

    invoke-virtual {p0}, Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout;->getPaddingRight()I

    move-result v4

    sub-int/2addr v3, v4

    iget v4, v0, Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout$LayoutParams;->rightMargin:I

    sub-int/2addr v3, v4

    invoke-virtual {p0}, Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout;->getHeight()I

    move-result v4

    invoke-virtual {p0}, Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout;->getPaddingBottom()I

    move-result v5

    sub-int/2addr v4, v5

    iget v5, v0, Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout$LayoutParams;->bottomMargin:I

    sub-int/2addr v4, v5

    invoke-virtual {v7, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 702
    iget-object v1, p0, Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout;->mLastInsets:Landroidx/core/view/WindowInsetsCompat;

    if-eqz v1, :cond_0

    invoke-static {p0}, Landroidx/core/view/ViewCompat;->getFitsSystemWindows(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p1}, Landroidx/core/view/ViewCompat;->getFitsSystemWindows(Landroid/view/View;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 703
    iget v1, v7, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout;->mLastInsets:Landroidx/core/view/WindowInsetsCompat;

    invoke-virtual {v2}, Landroidx/core/view/WindowInsetsCompat;->getSystemWindowInsetLeft()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, v7, Landroid/graphics/Rect;->left:I

    .line 704
    iget v1, v7, Landroid/graphics/Rect;->top:I

    iget-object v2, p0, Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout;->mLastInsets:Landroidx/core/view/WindowInsetsCompat;

    invoke-virtual {v2}, Landroidx/core/view/WindowInsetsCompat;->getSystemWindowInsetTop()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, v7, Landroid/graphics/Rect;->top:I

    .line 705
    iget v1, v7, Landroid/graphics/Rect;->right:I

    iget-object v2, p0, Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout;->mLastInsets:Landroidx/core/view/WindowInsetsCompat;

    invoke-virtual {v2}, Landroidx/core/view/WindowInsetsCompat;->getSystemWindowInsetRight()I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, v7, Landroid/graphics/Rect;->right:I

    .line 706
    iget v1, v7, Landroid/graphics/Rect;->bottom:I

    iget-object v2, p0, Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout;->mLastInsets:Landroidx/core/view/WindowInsetsCompat;

    invoke-virtual {v2}, Landroidx/core/view/WindowInsetsCompat;->getSystemWindowInsetBottom()I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, v7, Landroid/graphics/Rect;->bottom:I

    .line 709
    :cond_0
    invoke-static {}, Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout;->acquireTempRect()Landroid/graphics/Rect;

    move-result-object v8

    .line 710
    .local v8, "var5":Landroid/graphics/Rect;
    iget v1, v0, Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout$LayoutParams;->gravity:I

    invoke-static {v1}, Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout;->resolveGravity(I)I

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    move-object v4, v7

    move-object v5, v8

    move v6, p2

    invoke-static/range {v1 .. v6}, Landroidx/core/view/GravityCompat;->apply(IIILandroid/graphics/Rect;Landroid/graphics/Rect;I)V

    .line 711
    iget v1, v8, Landroid/graphics/Rect;->left:I

    iget v2, v8, Landroid/graphics/Rect;->top:I

    iget v3, v8, Landroid/graphics/Rect;->right:I

    iget v4, v8, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/view/View;->layout(IIII)V

    .line 712
    invoke-static {v7}, Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout;->releaseTempRect(Landroid/graphics/Rect;)V

    .line 713
    invoke-static {v8}, Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout;->releaseTempRect(Landroid/graphics/Rect;)V

    .line 714
    return-void
.end method

.method public final layoutChildWithAnchor(Landroid/view/View;Landroid/view/View;I)V
    .locals 6
    .param p1, "var1"    # Landroid/view/View;
    .param p2, "var2"    # Landroid/view/View;
    .param p3, "var3"    # I

    .line 717
    invoke-static {}, Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout;->acquireTempRect()Landroid/graphics/Rect;

    move-result-object v0

    .line 718
    .local v0, "var4":Landroid/graphics/Rect;
    invoke-static {}, Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout;->acquireTempRect()Landroid/graphics/Rect;

    move-result-object v1

    .line 721
    .local v1, "var5":Landroid/graphics/Rect;
    :try_start_0
    invoke-virtual {p0, p2, v0}, Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout;->getDescendantRect(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 722
    invoke-virtual {p0, p1, p3, v0, v1}, Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout;->getDesiredAnchoredChildRect(Landroid/view/View;ILandroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 723
    iget v2, v1, Landroid/graphics/Rect;->left:I

    iget v3, v1, Landroid/graphics/Rect;->top:I

    iget v4, v1, Landroid/graphics/Rect;->right:I

    iget v5, v1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/view/View;->layout(IIII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 725
    invoke-static {v0}, Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout;->releaseTempRect(Landroid/graphics/Rect;)V

    .line 726
    invoke-static {v1}, Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout;->releaseTempRect(Landroid/graphics/Rect;)V

    .line 727
    nop

    .line 729
    return-void

    .line 725
    :catchall_0
    move-exception v2

    invoke-static {v0}, Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout;->releaseTempRect(Landroid/graphics/Rect;)V

    .line 726
    invoke-static {v1}, Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout;->releaseTempRect(Landroid/graphics/Rect;)V

    .line 727
    throw v2
.end method

.method public final layoutChildWithKeyline(Landroid/view/View;II)V
    .locals 11
    .param p1, "var1"    # Landroid/view/View;
    .param p2, "var2"    # I
    .param p3, "var3"    # I

    .line 732
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout$LayoutParams;

    .line 733
    .local v0, "var4":Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout$LayoutParams;
    iget v1, v0, Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout$LayoutParams;->gravity:I

    invoke-static {v1}, Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout;->resolveKeylineGravity(I)I

    move-result v1

    invoke-static {v1, p3}, Landroidx/core/view/GravityCompat;->getAbsoluteGravity(II)I

    move-result v1

    .line 734
    .local v1, "var5":I
    and-int/lit8 v2, v1, 0x7

    .line 735
    .local v2, "var6":I
    and-int/lit8 v3, v1, 0x70

    .line 736
    .local v3, "var7":I
    invoke-virtual {p0}, Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout;->getWidth()I

    move-result v4

    .line 737
    .local v4, "var8":I
    invoke-virtual {p0}, Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout;->getHeight()I

    move-result v5

    .line 738
    .local v5, "var9":I
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    .line 739
    .local v6, "var10":I
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    .line 740
    .local v7, "var11":I
    move v1, p2

    .line 741
    const/4 v8, 0x1

    if-ne p3, v8, :cond_0

    .line 742
    sub-int v1, v4, p2

    .line 745
    :cond_0
    invoke-virtual {p0, v1}, Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout;->getKeyline(I)I

    move-result v9

    sub-int/2addr v9, v6

    .line 746
    .end local p2    # "var2":I
    .local v9, "var2":I
    const/4 p2, 0x0

    .line 747
    .end local p3    # "var3":I
    .local p2, "var3":I
    if-eq v2, v8, :cond_1

    .line 748
    const/4 p3, 0x5

    if-ne v2, p3, :cond_2

    .line 749
    add-int/2addr v9, v6

    goto :goto_0

    .line 752
    :cond_1
    div-int/lit8 p3, v6, 0x2

    add-int/2addr v9, p3

    .line 755
    :cond_2
    :goto_0
    const/16 p3, 0x10

    if-eq v3, p3, :cond_3

    .line 756
    const/16 p3, 0x50

    if-ne v3, p3, :cond_4

    .line 757
    add-int/lit8 p2, v7, 0x0

    goto :goto_1

    .line 760
    :cond_3
    div-int/lit8 p3, v7, 0x2

    add-int/lit8 p2, p3, 0x0

    .line 763
    :cond_4
    :goto_1
    invoke-virtual {p0}, Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout;->getPaddingLeft()I

    move-result p3

    iget v8, v0, Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout$LayoutParams;->leftMargin:I

    add-int/2addr p3, v8

    invoke-virtual {p0}, Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout;->getPaddingRight()I

    move-result v8

    sub-int v8, v4, v8

    sub-int/2addr v8, v6

    iget v10, v0, Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout$LayoutParams;->rightMargin:I

    sub-int/2addr v8, v10

    invoke-static {v9, v8}, Ljava/lang/Math;->min(II)I

    move-result v8

    invoke-static {p3, v8}, Ljava/lang/Math;->max(II)I

    move-result p3

    .line 764
    .end local v9    # "var2":I
    .local p3, "var2":I
    invoke-virtual {p0}, Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout;->getPaddingTop()I

    move-result v8

    iget v9, v0, Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout$LayoutParams;->topMargin:I

    add-int/2addr v8, v9

    invoke-virtual {p0}, Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout;->getPaddingBottom()I

    move-result v9

    sub-int v9, v5, v9

    sub-int/2addr v9, v7

    iget v10, v0, Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout$LayoutParams;->bottomMargin:I

    sub-int/2addr v9, v10

    invoke-static {p2, v9}, Ljava/lang/Math;->min(II)I

    move-result v9

    invoke-static {v8, v9}, Ljava/lang/Math;->max(II)I

    move-result p2

    .line 765
    add-int v8, v6, p3

    add-int v9, v7, p2

    invoke-virtual {p1, p3, p2, v8, v9}, Landroid/view/View;->layout(IIII)V

    .line 766
    return-void
.end method

.method public final offsetChildByInset(Landroid/view/View;Landroid/graphics/Rect;I)V
    .locals 10
    .param p1, "var1"    # Landroid/view/View;
    .param p2, "var2"    # Landroid/graphics/Rect;
    .param p3, "var3"    # I

    .line 769
    invoke-static {p1}, Landroidx/core/view/ViewCompat;->isLaidOut(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 770
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    if-lez v0, :cond_9

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v0

    if-lez v0, :cond_9

    .line 771
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout$LayoutParams;

    .line 772
    .local v0, "var4":Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout$LayoutParams;
    invoke-virtual {v0}, Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout$LayoutParams;->getBehavior()Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout$Behavior;

    move-result-object v1

    .line 773
    .local v1, "var5":Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout$Behavior;
    invoke-static {}, Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout;->acquireTempRect()Landroid/graphics/Rect;

    move-result-object v2

    .line 774
    .local v2, "var6":Landroid/graphics/Rect;
    invoke-static {}, Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout;->acquireTempRect()Landroid/graphics/Rect;

    move-result-object v3

    .line 775
    .local v3, "var7":Landroid/graphics/Rect;
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v4

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v5

    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v6

    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v7

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/graphics/Rect;->set(IIII)V

    .line 776
    if-eqz v1, :cond_1

    invoke-virtual {v1, p0, p1, v2}, Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout$Behavior;->getInsetDodgeRect(Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout;Landroid/view/View;Landroid/graphics/Rect;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 777
    invoke-virtual {v3, v2}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_0

    .line 778
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 779
    .local v4, "var12":Ljava/lang/StringBuilder;
    const-string v5, "Rect should be within the child\'s bounds. Rect:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 780
    invoke-virtual {v2}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 781
    const-string v5, " | Bounds:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 782
    invoke-virtual {v3}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 783
    new-instance v5, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 786
    .end local v4    # "var12":Ljava/lang/StringBuilder;
    :cond_1
    invoke-virtual {v2, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 789
    :goto_0
    invoke-static {v3}, Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout;->releaseTempRect(Landroid/graphics/Rect;)V

    .line 790
    invoke-virtual {v2}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 791
    invoke-static {v2}, Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout;->releaseTempRect(Landroid/graphics/Rect;)V

    .line 792
    return-void

    .line 799
    :cond_2
    iget v4, v0, Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout$LayoutParams;->dodgeInsetEdges:I

    invoke-static {v4, p3}, Landroidx/core/view/GravityCompat;->getAbsoluteGravity(II)I

    move-result v4

    .line 800
    .local v4, "var8":I
    and-int/lit8 v5, v4, 0x30

    const/16 v6, 0x30

    if-ne v5, v6, :cond_3

    .line 801
    iget v5, v2, Landroid/graphics/Rect;->top:I

    iget v6, v0, Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout$LayoutParams;->topMargin:I

    sub-int/2addr v5, v6

    iget v6, v0, Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout$LayoutParams;->mInsetOffsetY:I

    sub-int p3, v5, v6

    .line 802
    iget v5, p2, Landroid/graphics/Rect;->top:I

    .line 803
    .local v5, "var9":I
    if-ge p3, v5, :cond_3

    .line 804
    sub-int v6, v5, p3

    invoke-virtual {p0, p1, v6}, Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout;->setInsetOffsetY(Landroid/view/View;I)V

    .line 805
    const/4 v6, 0x1

    .line 806
    .local v6, "var13":Z
    goto :goto_1

    .line 810
    .end local v5    # "var9":I
    .end local v6    # "var13":Z
    :cond_3
    const/4 v6, 0x0

    .line 813
    .restart local v6    # "var13":Z
    :goto_1
    move v5, v6

    .line 815
    .local v5, "var14":Z
    and-int/lit8 v7, v4, 0x50

    const/16 v8, 0x50

    if-ne v7, v8, :cond_4

    .line 816
    invoke-virtual {p0}, Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout;->getHeight()I

    move-result v7

    iget v8, v2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v7, v8

    iget v8, v0, Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout$LayoutParams;->bottomMargin:I

    sub-int/2addr v7, v8

    iget v8, v0, Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout$LayoutParams;->mInsetOffsetY:I

    add-int/2addr v7, v8

    .line 817
    .local v7, "var10":I
    iget v8, p2, Landroid/graphics/Rect;->bottom:I

    .line 818
    .local v8, "var11":I
    move v5, v6

    .line 819
    if-ge v7, v8, :cond_4

    .line 820
    sub-int v9, v7, v8

    invoke-virtual {p0, p1, v9}, Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout;->setInsetOffsetY(Landroid/view/View;I)V

    .line 821
    const/4 v5, 0x1

    .line 825
    .end local v7    # "var10":I
    .end local v8    # "var11":I
    :cond_4
    const/4 v7, 0x0

    if-nez v5, :cond_5

    .line 826
    invoke-virtual {p0, p1, v7}, Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout;->setInsetOffsetY(Landroid/view/View;I)V

    .line 830
    :cond_5
    and-int/lit8 v8, v4, 0x3

    const/4 v9, 0x3

    if-ne v8, v9, :cond_6

    .line 831
    iget v8, v2, Landroid/graphics/Rect;->left:I

    iget v9, v0, Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout$LayoutParams;->leftMargin:I

    sub-int/2addr v8, v9

    iget v9, v0, Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout$LayoutParams;->mInsetOffsetX:I

    sub-int p3, v8, v9

    .line 832
    iget v8, p2, Landroid/graphics/Rect;->left:I

    .line 833
    .local v8, "var9":I
    if-ge p3, v8, :cond_6

    .line 834
    sub-int v9, v8, p3

    invoke-virtual {p0, p1, v9}, Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout;->setInsetOffsetX(Landroid/view/View;I)V

    .line 835
    const/4 v6, 0x1

    .line 836
    goto :goto_2

    .line 840
    .end local v8    # "var9":I
    :cond_6
    const/4 v6, 0x0

    .line 843
    :goto_2
    move v5, v6

    .line 844
    and-int/lit8 v8, v4, 0x5

    const/4 v9, 0x5

    if-ne v8, v9, :cond_7

    .line 845
    invoke-virtual {p0}, Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout;->getWidth()I

    move-result v8

    iget v9, v2, Landroid/graphics/Rect;->right:I

    sub-int/2addr v8, v9

    iget v9, v0, Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout$LayoutParams;->rightMargin:I

    sub-int/2addr v8, v9

    iget v9, v0, Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout$LayoutParams;->mInsetOffsetX:I

    add-int v4, v8, v9

    .line 846
    iget v8, p2, Landroid/graphics/Rect;->right:I

    .line 847
    .local v8, "var11":I
    move v5, v6

    .line 848
    if-ge v4, v8, :cond_7

    .line 849
    sub-int v9, v4, v8

    invoke-virtual {p0, p1, v9}, Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout;->setInsetOffsetX(Landroid/view/View;I)V

    .line 850
    const/4 v5, 0x1

    .line 854
    .end local v8    # "var11":I
    :cond_7
    if-nez v5, :cond_8

    .line 855
    invoke-virtual {p0, p1, v7}, Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout;->setInsetOffsetX(Landroid/view/View;I)V

    .line 858
    :cond_8
    invoke-static {v2}, Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout;->releaseTempRect(Landroid/graphics/Rect;)V

    .line 862
    .end local v0    # "var4":Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout$LayoutParams;
    .end local v1    # "var5":Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout$Behavior;
    .end local v2    # "var6":Landroid/graphics/Rect;
    .end local v3    # "var7":Landroid/graphics/Rect;
    .end local v4    # "var8":I
    .end local v5    # "var14":Z
    .end local v6    # "var13":Z
    :cond_9
    return-void
.end method

.method public offsetChildToAnchor(Landroid/view/View;I)V
    .locals 17
    .param p1, "var1"    # Landroid/view/View;
    .param p2, "var2"    # I

    .line 865
    move-object/from16 v8, p0

    move-object/from16 v9, p1

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout$LayoutParams;

    .line 866
    .local v10, "var3":Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout$LayoutParams;
    iget-object v0, v10, Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout$LayoutParams;->mAnchorView:Landroid/view/View;

    if-eqz v0, :cond_4

    .line 874
    invoke-static {}, Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout;->acquireTempRect()Landroid/graphics/Rect;

    move-result-object v11

    .line 875
    .local v11, "var4":Landroid/graphics/Rect;
    invoke-static {}, Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout;->acquireTempRect()Landroid/graphics/Rect;

    move-result-object v12

    .line 876
    .local v12, "var5":Landroid/graphics/Rect;
    invoke-static {}, Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout;->acquireTempRect()Landroid/graphics/Rect;

    move-result-object v13

    .line 877
    .local v13, "var6":Landroid/graphics/Rect;
    iget-object v0, v10, Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout$LayoutParams;->mAnchorView:Landroid/view/View;

    invoke-virtual {v8, v0, v11}, Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout;->getDescendantRect(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 878
    const/4 v14, 0x0

    .line 879
    .local v14, "var7":Z
    const/4 v0, 0x0

    invoke-virtual {v8, v9, v0, v12}, Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout;->getChildRect(Landroid/view/View;ZLandroid/graphics/Rect;)V

    .line 880
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v15

    .line 881
    .local v15, "var8":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    .line 882
    .local v7, "var9":I
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move-object v3, v11

    move-object v4, v13

    move-object v5, v10

    move v6, v15

    move/from16 v16, v7

    .end local v7    # "var9":I
    .local v16, "var9":I
    invoke-virtual/range {v0 .. v7}, Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout;->getDesiredAnchoredChildRectWithoutConstraints(Landroid/view/View;ILandroid/graphics/Rect;Landroid/graphics/Rect;Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout$LayoutParams;II)V

    .line 883
    iget v0, v13, Landroid/graphics/Rect;->left:I

    iget v1, v12, Landroid/graphics/Rect;->left:I

    if-ne v0, v1, :cond_0

    .line 884
    move v0, v14

    .line 885
    .local v0, "var11":Z
    iget v1, v13, Landroid/graphics/Rect;->top:I

    iget v2, v12, Landroid/graphics/Rect;->top:I

    if-ne v1, v2, :cond_0

    .line 886
    goto :goto_0

    .line 890
    .end local v0    # "var11":Z
    :cond_0
    const/4 v0, 0x1

    .line 893
    .end local v14    # "var7":Z
    .restart local v0    # "var11":Z
    :goto_0
    move/from16 v1, v16

    .end local v16    # "var9":I
    .local v1, "var9":I
    invoke-virtual {v8, v10, v13, v15, v1}, Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout;->constrainChildRect(Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout$LayoutParams;Landroid/graphics/Rect;II)V

    .line 894
    iget v2, v13, Landroid/graphics/Rect;->left:I

    iget v3, v12, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v3

    .line 895
    .local v2, "var12":I
    iget v3, v13, Landroid/graphics/Rect;->top:I

    iget v4, v12, Landroid/graphics/Rect;->top:I

    sub-int/2addr v3, v4

    .line 896
    .end local v1    # "var9":I
    .local v3, "var9":I
    if-eqz v2, :cond_1

    .line 897
    invoke-static {v9, v2}, Landroidx/core/view/ViewCompat;->offsetLeftAndRight(Landroid/view/View;I)V

    .line 900
    :cond_1
    if-eqz v3, :cond_2

    .line 901
    invoke-static {v9, v3}, Landroidx/core/view/ViewCompat;->offsetTopAndBottom(Landroid/view/View;I)V

    .line 904
    :cond_2
    if-eqz v0, :cond_3

    .line 905
    invoke-virtual {v10}, Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout$LayoutParams;->getBehavior()Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout$Behavior;

    move-result-object v1

    .line 906
    .local v1, "var10":Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout$Behavior;
    if-eqz v1, :cond_3

    .line 907
    iget-object v4, v10, Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout$LayoutParams;->mAnchorView:Landroid/view/View;

    invoke-virtual {v1, v8, v9, v4}, Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout$Behavior;->onDependentViewChanged(Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout;Landroid/view/View;Landroid/view/View;)Z

    .line 911
    .end local v1    # "var10":Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout$Behavior;
    :cond_3
    invoke-static {v11}, Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout;->releaseTempRect(Landroid/graphics/Rect;)V

    .line 912
    invoke-static {v12}, Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout;->releaseTempRect(Landroid/graphics/Rect;)V

    .line 913
    invoke-static {v13}, Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout;->releaseTempRect(Landroid/graphics/Rect;)V

    .line 916
    .end local v0    # "var11":Z
    .end local v2    # "var12":I
    .end local v3    # "var9":I
    .end local v11    # "var4":Landroid/graphics/Rect;
    .end local v12    # "var5":Landroid/graphics/Rect;
    .end local v13    # "var6":Landroid/graphics/Rect;
    .end local v15    # "var8":I
    :cond_4
    return-void
.end method

.method public onAttachedToWindow()V
    .locals 2

    .line 919
    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    .line 920
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout;->resetTouchBehaviors(Z)V

    .line 921
    iget-boolean v0, p0, Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout;->mNeedsPreDrawListener:Z

    if-eqz v0, :cond_1

    .line 922
    iget-object v0, p0, Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout;->mOnPreDrawListener:Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout$OnPreDrawListener;

    if-nez v0, :cond_0

    .line 923
    new-instance v0, Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout$OnPreDrawListener;

    invoke-direct {v0, p0}, Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout$OnPreDrawListener;-><init>(Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout;)V

    iput-object v0, p0, Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout;->mOnPreDrawListener:Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout$OnPreDrawListener;

    .line 926
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout;->mOnPreDrawListener:Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout$OnPreDrawListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 929
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout;->mLastInsets:Landroidx/core/view/WindowInsetsCompat;

    if-nez v0, :cond_2

    invoke-static {p0}, Landroidx/core/view/ViewCompat;->getFitsSystemWindows(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 930
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->requestApplyInsets(Landroid/view/View;)V

    .line 933
    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout;->mIsAttachedToWindow:Z

    .line 934
    return-void
.end method

.method public final onChildViewsChanged(I)V
    .locals 17
    .param p1, "var1"    # I

    .line 937
    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-static/range {p0 .. p0}, Landroidx/core/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v2

    .line 938
    .local v2, "var2":I
    iget-object v3, v0, Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout;->mDependencySortedChildren:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    .line 939
    .local v3, "var3":I
    invoke-static {}, Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout;->acquireTempRect()Landroid/graphics/Rect;

    move-result-object v4

    .line 940
    .local v4, "var4":Landroid/graphics/Rect;
    invoke-static {}, Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout;->acquireTempRect()Landroid/graphics/Rect;

    move-result-object v5

    .line 941
    .local v5, "var5":Landroid/graphics/Rect;
    invoke-static {}, Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout;->acquireTempRect()Landroid/graphics/Rect;

    move-result-object v6

    .line 943
    .local v6, "var6":Landroid/graphics/Rect;
    const/4 v7, 0x0

    .local v7, "var7":I
    :goto_0
    if-ge v7, v3, :cond_e

    .line 944
    iget-object v8, v0, Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout;->mDependencySortedChildren:Ljava/util/List;

    invoke-interface {v8, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/View;

    .line 945
    .local v8, "var8":Landroid/view/View;
    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    check-cast v9, Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout$LayoutParams;

    .line 946
    .local v9, "var9":Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout$LayoutParams;
    if-nez v1, :cond_0

    invoke-virtual {v8}, Landroid/view/View;->getVisibility()I

    move-result v10

    const/16 v11, 0x8

    if-eq v10, v11, :cond_d

    .line 948
    :cond_0
    const/4 v10, 0x0

    .local v10, "var10":I
    :goto_1
    if-ge v10, v7, :cond_2

    .line 949
    iget-object v11, v0, Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout;->mDependencySortedChildren:Ljava/util/List;

    invoke-interface {v11, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/view/View;

    .line 950
    .local v11, "var11":Landroid/view/View;
    iget-object v12, v9, Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout$LayoutParams;->mAnchorDirectChild:Landroid/view/View;

    if-ne v12, v11, :cond_1

    .line 951
    invoke-virtual {v0, v8, v2}, Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout;->offsetChildToAnchor(Landroid/view/View;I)V

    .line 948
    .end local v11    # "var11":Landroid/view/View;
    :cond_1
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 955
    :cond_2
    const/4 v11, 0x1

    invoke-virtual {v0, v8, v11, v5}, Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout;->getChildRect(Landroid/view/View;ZLandroid/graphics/Rect;)V

    .line 956
    iget v12, v9, Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout$LayoutParams;->insetEdge:I

    if-eqz v12, :cond_6

    invoke-virtual {v5}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_6

    .line 957
    iget v12, v9, Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout$LayoutParams;->insetEdge:I

    invoke-static {v12, v2}, Landroidx/core/view/GravityCompat;->getAbsoluteGravity(II)I

    move-result v10

    .line 958
    and-int/lit8 v12, v10, 0x70

    .line 959
    .local v12, "var12":I
    const/16 v13, 0x30

    if-eq v12, v13, :cond_3

    .line 960
    const/16 v13, 0x50

    if-ne v12, v13, :cond_4

    .line 961
    iget v13, v4, Landroid/graphics/Rect;->bottom:I

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout;->getHeight()I

    move-result v14

    iget v15, v5, Landroid/graphics/Rect;->top:I

    sub-int/2addr v14, v15

    invoke-static {v13, v14}, Ljava/lang/Math;->max(II)I

    move-result v13

    iput v13, v4, Landroid/graphics/Rect;->bottom:I

    goto :goto_2

    .line 964
    :cond_3
    iget v13, v4, Landroid/graphics/Rect;->top:I

    iget v14, v5, Landroid/graphics/Rect;->bottom:I

    invoke-static {v13, v14}, Ljava/lang/Math;->max(II)I

    move-result v13

    iput v13, v4, Landroid/graphics/Rect;->top:I

    .line 967
    :cond_4
    :goto_2
    and-int/lit8 v10, v10, 0x7

    .line 968
    const/4 v13, 0x3

    if-eq v10, v13, :cond_5

    .line 969
    const/4 v13, 0x5

    if-ne v10, v13, :cond_6

    .line 970
    iget v13, v4, Landroid/graphics/Rect;->right:I

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout;->getWidth()I

    move-result v14

    iget v15, v5, Landroid/graphics/Rect;->left:I

    sub-int/2addr v14, v15

    invoke-static {v13, v14}, Ljava/lang/Math;->max(II)I

    move-result v13

    iput v13, v4, Landroid/graphics/Rect;->right:I

    goto :goto_3

    .line 973
    :cond_5
    iget v13, v4, Landroid/graphics/Rect;->left:I

    iget v14, v5, Landroid/graphics/Rect;->right:I

    invoke-static {v13, v14}, Ljava/lang/Math;->max(II)I

    move-result v13

    iput v13, v4, Landroid/graphics/Rect;->left:I

    .line 977
    .end local v12    # "var12":I
    :cond_6
    :goto_3
    iget v12, v9, Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout$LayoutParams;->dodgeInsetEdges:I

    if-eqz v12, :cond_7

    invoke-virtual {v8}, Landroid/view/View;->getVisibility()I

    move-result v12

    if-nez v12, :cond_7

    .line 978
    invoke-virtual {v0, v8, v4, v2}, Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout;->offsetChildByInset(Landroid/view/View;Landroid/graphics/Rect;I)V

    .line 981
    :cond_7
    const/4 v12, 0x2

    if-eq v1, v12, :cond_9

    .line 982
    invoke-virtual {v0, v8, v6}, Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout;->getLastChildRect(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 983
    invoke-virtual {v6, v5}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_8

    .line 984
    goto :goto_7

    .line 987
    :cond_8
    invoke-virtual {v0, v8, v5}, Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout;->recordLastChildRect(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 990
    :cond_9
    add-int/lit8 v10, v7, 0x1

    :goto_4
    if-ge v10, v3, :cond_d

    .line 991
    iget-object v13, v0, Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout;->mDependencySortedChildren:Ljava/util/List;

    invoke-interface {v13, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/view/View;

    .line 992
    .local v13, "var15":Landroid/view/View;
    invoke-virtual {v13}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v14

    check-cast v14, Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout$LayoutParams;

    .line 993
    .local v14, "var13":Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout$LayoutParams;
    invoke-virtual {v14}, Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout$LayoutParams;->getBehavior()Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout$Behavior;

    move-result-object v15

    .line 994
    .local v15, "var16":Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout$Behavior;
    if-eqz v15, :cond_c

    invoke-virtual {v15, v0, v13, v8}, Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout$Behavior;->layoutDependsOn(Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout;Landroid/view/View;Landroid/view/View;)Z

    move-result v16

    if-eqz v16, :cond_c

    .line 995
    if-nez v1, :cond_a

    invoke-virtual {v14}, Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout$LayoutParams;->getChangedAfterNestedScroll()Z

    move-result v16

    if-eqz v16, :cond_a

    .line 996
    invoke-virtual {v14}, Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout$LayoutParams;->resetChangedAfterNestedScroll()V

    goto :goto_6

    .line 999
    :cond_a
    if-eq v1, v12, :cond_b

    .line 1000
    invoke-virtual {v15, v0, v13, v8}, Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout$Behavior;->onDependentViewChanged(Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout;Landroid/view/View;Landroid/view/View;)Z

    move-result v16

    move/from16 v12, v16

    .local v16, "var14":Z
    goto :goto_5

    .line 1002
    .end local v16    # "var14":Z
    :cond_b
    invoke-virtual {v15, v0, v13, v8}, Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout$Behavior;->onDependentViewRemoved(Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout;Landroid/view/View;Landroid/view/View;)V

    .line 1003
    const/16 v16, 0x1

    move/from16 v12, v16

    .line 1006
    .local v12, "var14":Z
    :goto_5
    if-ne v1, v11, :cond_c

    .line 1007
    invoke-virtual {v14, v12}, Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout$LayoutParams;->setChangedAfterNestedScroll(Z)V

    .line 990
    .end local v12    # "var14":Z
    .end local v13    # "var15":Landroid/view/View;
    .end local v14    # "var13":Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout$LayoutParams;
    .end local v15    # "var16":Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout$Behavior;
    :cond_c
    :goto_6
    add-int/lit8 v10, v10, 0x1

    const/4 v12, 0x2

    goto :goto_4

    .line 943
    .end local v8    # "var8":Landroid/view/View;
    .end local v9    # "var9":Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout$LayoutParams;
    .end local v10    # "var10":I
    :cond_d
    :goto_7
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_0

    .line 1015
    .end local v7    # "var7":I
    :cond_e
    invoke-static {v4}, Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout;->releaseTempRect(Landroid/graphics/Rect;)V

    .line 1016
    invoke-static {v5}, Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout;->releaseTempRect(Landroid/graphics/Rect;)V

    .line 1017
    invoke-static {v6}, Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout;->releaseTempRect(Landroid/graphics/Rect;)V

    .line 1018
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 3

    .line 1021
    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    .line 1022
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout;->resetTouchBehaviors(Z)V

    .line 1023
    iget-boolean v1, p0, Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout;->mNeedsPreDrawListener:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout;->mOnPreDrawListener:Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout$OnPreDrawListener;

    if-eqz v1, :cond_0

    .line 1024
    invoke-virtual {p0}, Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout;->mOnPreDrawListener:Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout$OnPreDrawListener;

    invoke-virtual {v1, v2}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 1027
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout;->mNestedScrollingTarget:Landroid/view/View;

    .line 1028
    .local v1, "var1":Landroid/view/View;
    if-eqz v1, :cond_1

    .line 1029
    iput-object v1, p0, Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout;->mLastNestedScrollingChild:Landroid/view/View;

    .line 1030
    invoke-virtual {p0, v1}, Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout;->onStopNestedScroll(Landroid/view/View;)V

    .line 1033
    :cond_1
    iput-boolean v0, p0, Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout;->mIsAttachedToWindow:Z

    .line 1034
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 5
    .param p1, "var1"    # Landroid/graphics/Canvas;

    .line 1037
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onDraw(Landroid/graphics/Canvas;)V

    .line 1038
    iget-boolean v0, p0, Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout;->mDrawStatusBarBackground:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout;->mStatusBarBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 1039
    iget-object v0, p0, Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout;->mLastInsets:Landroidx/core/view/WindowInsetsCompat;

    .line 1041
    .local v0, "var2":Landroidx/core/view/WindowInsetsCompat;
    if-eqz v0, :cond_0

    .line 1042
    invoke-virtual {v0}, Landroidx/core/view/WindowInsetsCompat;->getSystemWindowInsetTop()I

    move-result v1

    .local v1, "var3":I
    goto :goto_0

    .line 1044
    .end local v1    # "var3":I
    :cond_0
    const/4 v1, 0x0

    .line 1047
    .restart local v1    # "var3":I
    :goto_0
    if-lez v1, :cond_1

    .line 1048
    iget-object v2, p0, Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout;->mStatusBarBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout;->getWidth()I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v2, v4, v4, v3, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1049
    iget-object v2, p0, Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout;->mStatusBarBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1053
    .end local v0    # "var2":Landroidx/core/view/WindowInsetsCompat;
    .end local v1    # "var3":I
    :cond_1
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "var1"    # Landroid/view/MotionEvent;

    .line 1056
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 1057
    .local v0, "var2":I
    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 1058
    invoke-virtual {p0, v1}, Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout;->resetTouchBehaviors(Z)V

    .line 1061
    :cond_0
    const/4 v2, 0x0

    invoke-virtual {p0, p1, v2}, Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout;->performIntercept(Landroid/view/MotionEvent;I)Z

    move-result v2

    .line 1062
    .local v2, "var3":Z
    if-eq v0, v1, :cond_1

    const/4 v3, 0x3

    if-ne v0, v3, :cond_2

    .line 1063
    :cond_1
    invoke-virtual {p0, v1}, Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout;->resetTouchBehaviors(Z)V

    .line 1066
    :cond_2
    return v2
.end method

.method public onLayout(ZIIII)V
    .locals 3
    .param p1, "var1"    # Z
    .param p2, "var2"    # I
    .param p3, "var3"    # I
    .param p4, "var4"    # I
    .param p5, "var5"    # I

    .line 1070
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result p4

    .line 1071
    iget-object v0, p0, Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout;->mDependencySortedChildren:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p3

    .line 1073
    const/4 p2, 0x0

    :goto_0
    if-ge p2, p3, :cond_2

    .line 1074
    iget-object v0, p0, Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout;->mDependencySortedChildren:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 1075
    .local v0, "var6":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v1

    const/16 v2, 0x8

    if-eq v1, v2, :cond_1

    .line 1076
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout$LayoutParams;

    invoke-virtual {v1}, Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout$LayoutParams;->getBehavior()Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout$Behavior;

    move-result-object v1

    .line 1077
    .local v1, "var7":Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout$Behavior;
    if-eqz v1, :cond_0

    invoke-virtual {v1, p0, v0, p4}, Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout$Behavior;->onLayoutChild(Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout;Landroid/view/View;I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1078
    :cond_0
    invoke-virtual {p0, v0, p4}, Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout;->onLayoutChild(Landroid/view/View;I)V

    .line 1073
    .end local v0    # "var6":Landroid/view/View;
    .end local v1    # "var7":Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout$Behavior;
    :cond_1
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 1083
    :cond_2
    return-void
.end method

.method public onLayoutChild(Landroid/view/View;I)V
    .locals 3
    .param p1, "var1"    # Landroid/view/View;
    .param p2, "var2"    # I

    .line 1086
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout$LayoutParams;

    .line 1087
    .local v0, "var3":Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout$LayoutParams;
    invoke-virtual {v0}, Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout$LayoutParams;->checkAnchorChanged()Z

    move-result v1

    if-nez v1, :cond_2

    .line 1088
    iget-object v1, v0, Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout$LayoutParams;->mAnchorView:Landroid/view/View;

    .line 1089
    .local v1, "var4":Landroid/view/View;
    if-eqz v1, :cond_0

    .line 1090
    invoke-virtual {p0, p1, v1, p2}, Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout;->layoutChildWithAnchor(Landroid/view/View;Landroid/view/View;I)V

    goto :goto_0

    .line 1092
    :cond_0
    iget v2, v0, Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout$LayoutParams;->keyline:I

    .line 1093
    .local v2, "var5":I
    if-ltz v2, :cond_1

    .line 1094
    invoke-virtual {p0, p1, v2, p2}, Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout;->layoutChildWithKeyline(Landroid/view/View;II)V

    goto :goto_0

    .line 1096
    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout;->layoutChild(Landroid/view/View;I)V

    .line 1100
    .end local v1    # "var4":Landroid/view/View;
    .end local v2    # "var5":I
    :goto_0
    nop

    .line 1103
    return-void

    .line 1101
    :cond_2
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "An anchor may not be changed after CoordinatorLayout measurement begins before layout is complete."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public onMeasure(II)V
    .locals 33
    .param p1, "var1"    # I
    .param p2, "var2"    # I

    .line 1106
    move-object/from16 v7, p0

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout;->prepareChildren()V

    .line 1107
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout;->ensurePreDrawListener()V

    .line 1108
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout;->getPaddingLeft()I

    move-result v8

    .line 1109
    .local v8, "var3":I
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout;->getPaddingTop()I

    move-result v9

    .line 1110
    .local v9, "var4":I
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout;->getPaddingRight()I

    move-result v10

    .line 1111
    .local v10, "var5":I
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout;->getPaddingBottom()I

    move-result v11

    .line 1112
    .local v11, "var6":I
    invoke-static/range {p0 .. p0}, Landroidx/core/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v12

    .line 1114
    .local v12, "var7":I
    const/4 v0, 0x1

    if-ne v12, v0, :cond_0

    .line 1115
    const/4 v0, 0x1

    move v13, v0

    .local v0, "var8":Z
    goto :goto_0

    .line 1117
    .end local v0    # "var8":Z
    :cond_0
    const/4 v0, 0x0

    move v13, v0

    .line 1120
    .local v13, "var8":Z
    :goto_0
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v14

    .line 1121
    .local v14, "var9":I
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v15

    .line 1122
    .local v15, "var10":I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v6

    .line 1123
    .local v6, "var11":I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v16

    .line 1124
    .local v16, "var12":I
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout;->getSuggestedMinimumWidth()I

    move-result v0

    .line 1125
    .local v0, "var13":I
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout;->getSuggestedMinimumHeight()I

    move-result v1

    .line 1127
    .local v1, "var14":I
    iget-object v2, v7, Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout;->mLastInsets:Landroidx/core/view/WindowInsetsCompat;

    if-eqz v2, :cond_1

    invoke-static/range {p0 .. p0}, Landroidx/core/view/ViewCompat;->getFitsSystemWindows(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1128
    const/4 v2, 0x1

    move/from16 v17, v2

    .local v2, "var15":Z
    goto :goto_1

    .line 1130
    .end local v2    # "var15":Z
    :cond_1
    const/4 v2, 0x0

    move/from16 v17, v2

    .line 1133
    .local v17, "var15":Z
    :goto_1
    iget-object v2, v7, Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout;->mDependencySortedChildren:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    .line 1134
    .local v5, "var16":I
    const/4 v2, 0x0

    .line 1136
    .local v2, "var17":I
    const/4 v3, 0x0

    move v4, v0

    move/from16 v32, v3

    move v3, v2

    move/from16 v2, v32

    .end local v0    # "var13":I
    .local v2, "var18":I
    .local v3, "var17":I
    .local v4, "var13":I
    :goto_2
    if-ge v2, v5, :cond_d

    .line 1137
    iget-object v0, v7, Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout;->mDependencySortedChildren:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v18, v0

    check-cast v18, Landroid/view/View;

    .line 1138
    .local v18, "var19":Landroid/view/View;
    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getVisibility()I

    move-result v0

    move/from16 v19, v2

    .end local v2    # "var18":I
    .local v19, "var18":I
    const/16 v2, 0x8

    if-eq v0, v2, :cond_c

    .line 1143
    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout$LayoutParams;

    .line 1144
    .local v2, "var20":Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout$LayoutParams;
    iget v0, v2, Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout$LayoutParams;->keyline:I

    .line 1145
    .local v0, "var21":I
    if-ltz v0, :cond_7

    if-eqz v14, :cond_7

    .line 1146
    invoke-virtual {v7, v0}, Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout;->getKeyline(I)I

    move-result v20

    .line 1147
    .local v20, "var22":I
    move/from16 v21, v0

    .end local v0    # "var21":I
    .local v21, "var21":I
    iget v0, v2, Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout$LayoutParams;->gravity:I

    invoke-static {v0}, Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout;->resolveKeylineGravity(I)I

    move-result v0

    invoke-static {v0, v12}, Landroidx/core/view/GravityCompat;->getAbsoluteGravity(II)I

    move-result v0

    and-int/lit8 v0, v0, 0x7

    .line 1148
    .end local v21    # "var21":I
    .restart local v0    # "var21":I
    move/from16 v22, v3

    .end local v3    # "var17":I
    .local v22, "var17":I
    const/4 v3, 0x3

    if-ne v0, v3, :cond_2

    if-eqz v13, :cond_3

    :cond_2
    const/4 v3, 0x5

    if-ne v0, v3, :cond_4

    if-eqz v13, :cond_4

    .line 1149
    :cond_3
    sub-int v3, v15, v10

    sub-int v3, v3, v20

    move/from16 v24, v4

    const/4 v4, 0x0

    .end local v4    # "var13":I
    .local v24, "var13":I
    invoke-static {v4, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 1150
    move/from16 v20, v0

    goto :goto_3

    .line 1148
    .end local v24    # "var13":I
    .restart local v4    # "var13":I
    :cond_4
    move/from16 v24, v4

    .line 1153
    .end local v4    # "var13":I
    .restart local v24    # "var13":I
    if-ne v0, v3, :cond_5

    if-eqz v13, :cond_6

    :cond_5
    const/4 v3, 0x3

    if-ne v0, v3, :cond_8

    if-eqz v13, :cond_8

    .line 1154
    :cond_6
    sub-int v3, v20, v8

    const/4 v4, 0x0

    invoke-static {v4, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 1155
    move/from16 v20, v0

    goto :goto_3

    .line 1145
    .end local v20    # "var22":I
    .end local v22    # "var17":I
    .end local v24    # "var13":I
    .restart local v3    # "var17":I
    .restart local v4    # "var13":I
    :cond_7
    move/from16 v21, v0

    move/from16 v22, v3

    move/from16 v24, v4

    .line 1159
    .end local v0    # "var21":I
    .end local v3    # "var17":I
    .end local v4    # "var13":I
    .restart local v21    # "var21":I
    .restart local v22    # "var17":I
    .restart local v24    # "var13":I
    move/from16 v0, v21

    .end local v21    # "var21":I
    .restart local v0    # "var21":I
    :cond_8
    const/4 v0, 0x0

    move/from16 v20, v0

    .line 1162
    .end local v0    # "var21":I
    .local v20, "var21":I
    :goto_3
    move v4, v1

    .line 1163
    .local v4, "var23":I
    if-eqz v17, :cond_9

    invoke-static/range {v18 .. v18}, Landroidx/core/view/ViewCompat;->getFitsSystemWindows(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 1164
    iget-object v0, v7, Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout;->mLastInsets:Landroidx/core/view/WindowInsetsCompat;

    invoke-virtual {v0}, Landroidx/core/view/WindowInsetsCompat;->getSystemWindowInsetLeft()I

    move-result v0

    .line 1165
    .local v0, "var24":I
    iget-object v3, v7, Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout;->mLastInsets:Landroidx/core/view/WindowInsetsCompat;

    invoke-virtual {v3}, Landroidx/core/view/WindowInsetsCompat;->getSystemWindowInsetRight()I

    move-result v3

    .line 1166
    .local v3, "var22":I
    move/from16 v21, v4

    .end local v4    # "var23":I
    .local v21, "var23":I
    iget-object v4, v7, Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout;->mLastInsets:Landroidx/core/view/WindowInsetsCompat;

    invoke-virtual {v4}, Landroidx/core/view/WindowInsetsCompat;->getSystemWindowInsetTop()I

    move-result v4

    .line 1167
    .local v4, "var25":I
    move/from16 v23, v5

    .end local v5    # "var16":I
    .local v23, "var16":I
    iget-object v5, v7, Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout;->mLastInsets:Landroidx/core/view/WindowInsetsCompat;

    invoke-virtual {v5}, Landroidx/core/view/WindowInsetsCompat;->getSystemWindowInsetBottom()I

    move-result v1

    .line 1168
    add-int v5, v0, v3

    sub-int v5, v15, v5

    invoke-static {v5, v14}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 1169
    add-int v5, v4, v1

    sub-int v5, v16, v5

    invoke-static {v5, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 1170
    .end local v1    # "var14":I
    .end local v4    # "var25":I
    .local v0, "var14":I
    move/from16 v25, v0

    move/from16 v26, v3

    goto :goto_4

    .line 1163
    .end local v0    # "var14":I
    .end local v3    # "var22":I
    .end local v21    # "var23":I
    .end local v23    # "var16":I
    .restart local v1    # "var14":I
    .local v4, "var23":I
    .restart local v5    # "var16":I
    :cond_9
    move/from16 v21, v4

    move/from16 v23, v5

    .line 1171
    .end local v4    # "var23":I
    .end local v5    # "var16":I
    .restart local v21    # "var23":I
    .restart local v23    # "var16":I
    move/from16 v3, p1

    .line 1172
    .restart local v3    # "var22":I
    move/from16 v0, p2

    move/from16 v25, v0

    move/from16 v26, v3

    .line 1175
    .end local v1    # "var14":I
    .end local v3    # "var22":I
    .local v25, "var14":I
    .local v26, "var22":I
    :goto_4
    invoke-virtual {v2}, Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout$LayoutParams;->getBehavior()Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout$Behavior;

    move-result-object v27

    .line 1176
    .local v27, "var26":Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout$Behavior;
    if-eqz v27, :cond_a

    const/16 v28, 0x0

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    move-object v5, v2

    .end local v2    # "var20":Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout$LayoutParams;
    .local v5, "var20":Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout$LayoutParams;
    move-object/from16 v2, v18

    move/from16 v4, v22

    .end local v22    # "var17":I
    .local v4, "var17":I
    move/from16 v3, v26

    move/from16 v30, v4

    move/from16 v31, v21

    move/from16 v29, v24

    .end local v4    # "var17":I
    .end local v21    # "var23":I
    .end local v24    # "var13":I
    .local v29, "var13":I
    .local v30, "var17":I
    .local v31, "var23":I
    move/from16 v4, v20

    move/from16 v22, v12

    move/from16 v21, v23

    move-object v12, v5

    .end local v5    # "var20":Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout$LayoutParams;
    .end local v23    # "var16":I
    .local v12, "var20":Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout$LayoutParams;
    .local v21, "var16":I
    .local v22, "var7":I
    move/from16 v5, v25

    move/from16 v23, v6

    .end local v6    # "var11":I
    .local v23, "var11":I
    move/from16 v6, v28

    invoke-virtual/range {v0 .. v6}, Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout$Behavior;->onMeasureChild(Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout;Landroid/view/View;IIII)Z

    move-result v0

    if-nez v0, :cond_b

    goto :goto_5

    .end local v29    # "var13":I
    .end local v30    # "var17":I
    .end local v31    # "var23":I
    .restart local v2    # "var20":Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout$LayoutParams;
    .restart local v6    # "var11":I
    .local v12, "var7":I
    .local v21, "var23":I
    .local v22, "var17":I
    .local v23, "var16":I
    .restart local v24    # "var13":I
    :cond_a
    move/from16 v31, v21

    move/from16 v30, v22

    move/from16 v21, v23

    move/from16 v29, v24

    move/from16 v23, v6

    move/from16 v22, v12

    move-object v12, v2

    .line 1177
    .end local v2    # "var20":Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout$LayoutParams;
    .end local v6    # "var11":I
    .end local v24    # "var13":I
    .local v12, "var20":Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout$LayoutParams;
    .local v21, "var16":I
    .local v22, "var7":I
    .local v23, "var11":I
    .restart local v29    # "var13":I
    .restart local v30    # "var17":I
    .restart local v31    # "var23":I
    :goto_5
    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move/from16 v2, v26

    move/from16 v3, v20

    move/from16 v4, v25

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout;->onMeasureChild(Landroid/view/View;IIII)V

    .line 1180
    :cond_b
    add-int v0, v8, v10

    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    add-int/2addr v0, v1

    iget v1, v12, Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout$LayoutParams;->leftMargin:I

    add-int/2addr v0, v1

    iget v1, v12, Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout$LayoutParams;->rightMargin:I

    add-int/2addr v0, v1

    move/from16 v2, v29

    .end local v29    # "var13":I
    .local v2, "var13":I
    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 1181
    .end local v2    # "var13":I
    .local v0, "var13":I
    add-int v1, v9, v11

    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    add-int/2addr v1, v2

    iget v2, v12, Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout$LayoutParams;->topMargin:I

    add-int/2addr v1, v2

    iget v2, v12, Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v1, v2

    move/from16 v2, v31

    .end local v31    # "var23":I
    .local v2, "var23":I
    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 1182
    .end local v25    # "var14":I
    .restart local v1    # "var14":I
    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getMeasuredState()I

    move-result v3

    move/from16 v4, v30

    .end local v30    # "var17":I
    .restart local v4    # "var17":I
    invoke-static {v4, v3}, Landroid/view/View;->combineMeasuredStates(II)I

    move-result v3

    move v4, v0

    .end local v4    # "var17":I
    .local v3, "var17":I
    goto :goto_6

    .line 1138
    .end local v0    # "var13":I
    .end local v2    # "var23":I
    .end local v20    # "var21":I
    .end local v21    # "var16":I
    .end local v22    # "var7":I
    .end local v23    # "var11":I
    .end local v26    # "var22":I
    .end local v27    # "var26":Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout$Behavior;
    .local v4, "var13":I
    .local v5, "var16":I
    .restart local v6    # "var11":I
    .local v12, "var7":I
    :cond_c
    move v2, v4

    move/from16 v21, v5

    move/from16 v23, v6

    move/from16 v22, v12

    move v4, v3

    .end local v3    # "var17":I
    .end local v5    # "var16":I
    .end local v6    # "var11":I
    .end local v12    # "var7":I
    .local v2, "var13":I
    .local v4, "var17":I
    .restart local v21    # "var16":I
    .restart local v22    # "var7":I
    .restart local v23    # "var11":I
    move v4, v2

    .line 1136
    .end local v2    # "var13":I
    .end local v18    # "var19":Landroid/view/View;
    .restart local v3    # "var17":I
    .local v4, "var13":I
    :goto_6
    add-int/lit8 v2, v19, 0x1

    move/from16 v5, v21

    move/from16 v12, v22

    move/from16 v6, v23

    .end local v19    # "var18":I
    .local v2, "var18":I
    goto/16 :goto_2

    .end local v21    # "var16":I
    .end local v22    # "var7":I
    .end local v23    # "var11":I
    .restart local v5    # "var16":I
    .restart local v6    # "var11":I
    .restart local v12    # "var7":I
    :cond_d
    move/from16 v19, v2

    move v2, v4

    move/from16 v21, v5

    move/from16 v23, v6

    move v4, v3

    .line 1186
    .end local v3    # "var17":I
    .end local v5    # "var16":I
    .end local v6    # "var11":I
    .local v2, "var13":I
    .local v4, "var17":I
    .restart local v21    # "var16":I
    .restart local v23    # "var11":I
    const/high16 v0, -0x1000000

    and-int/2addr v0, v4

    move/from16 v3, p1

    invoke-static {v2, v3, v0}, Landroid/view/View;->resolveSizeAndState(III)I

    move-result v0

    shl-int/lit8 v5, v4, 0x10

    move/from16 v6, p2

    invoke-static {v1, v6, v5}, Landroid/view/View;->resolveSizeAndState(III)I

    move-result v5

    invoke-virtual {v7, v0, v5}, Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout;->setMeasuredDimension(II)V

    .line 1187
    return-void
.end method

.method public onMeasureChild(Landroid/view/View;IIII)V
    .locals 0
    .param p1, "var1"    # Landroid/view/View;
    .param p2, "var2"    # I
    .param p3, "var3"    # I
    .param p4, "var4"    # I
    .param p5, "var5"    # I

    .line 1190
    invoke-virtual/range {p0 .. p5}, Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 1191
    return-void
.end method

.method public onNestedFling(Landroid/view/View;FFZ)Z
    .locals 14
    .param p1, "target"    # Landroid/view/View;
    .param p2, "velocityX"    # F
    .param p3, "velocityY"    # F
    .param p4, "consumed"    # Z

    .line 1194
    move-object v7, p0

    const/4 v0, 0x0

    .line 1195
    .local v0, "handled":Z
    invoke-virtual {p0}, Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout;->getChildCount()I

    move-result v8

    .line 1196
    .local v8, "childCount":I
    const/4 v1, 0x0

    move v9, v0

    move v10, v1

    .end local v0    # "handled":Z
    .local v9, "handled":Z
    .local v10, "i":I
    :goto_0
    if-ge v10, v8, :cond_3

    .line 1197
    invoke-virtual {p0, v10}, Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    .line 1198
    .local v11, "view":Landroid/view/View;
    invoke-virtual {v11}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    .line 1199
    goto :goto_1

    .line 1201
    :cond_0
    invoke-virtual {v11}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    move-object v12, v0

    check-cast v12, Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout$LayoutParams;

    .line 1202
    .local v12, "lp":Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout$LayoutParams;
    const/4 v0, 0x0

    invoke-virtual {v12, v0}, Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout$LayoutParams;->isNestedScrollAccepted(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1203
    goto :goto_1

    .line 1205
    :cond_1
    invoke-virtual {v12}, Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout$LayoutParams;->getBehavior()Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout$Behavior;

    move-result-object v13

    .line 1206
    .local v13, "viewBehavior":Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout$Behavior;
    if-eqz v13, :cond_2

    .line 1207
    move-object v0, v13

    move-object v1, p0

    move-object v2, v11

    move-object v3, p1

    move/from16 v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    invoke-virtual/range {v0 .. v6}, Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout$Behavior;->onNestedFling(Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout;Landroid/view/View;Landroid/view/View;FFZ)Z

    move-result v0

    or-int/2addr v0, v9

    move v9, v0

    .line 1196
    .end local v11    # "view":Landroid/view/View;
    .end local v12    # "lp":Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout$LayoutParams;
    .end local v13    # "viewBehavior":Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout$Behavior;
    :cond_2
    :goto_1
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 1210
    .end local v10    # "i":I
    :cond_3
    if-eqz v9, :cond_4

    .line 1211
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout;->onChildViewsChanged(I)V

    .line 1213
    :cond_4
    return v9
.end method

.method public onNestedPreFling(Landroid/view/View;FF)Z
    .locals 12
    .param p1, "target"    # Landroid/view/View;
    .param p2, "velocityX"    # F
    .param p3, "velocityY"    # F

    .line 1217
    const/4 v0, 0x0

    .line 1218
    .local v0, "handled":Z
    invoke-virtual {p0}, Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout;->getChildCount()I

    move-result v1

    .line 1219
    .local v1, "childCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_3

    .line 1220
    invoke-virtual {p0, v2}, Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    .line 1221
    .local v9, "view":Landroid/view/View;
    invoke-virtual {v9}, Landroid/view/View;->getVisibility()I

    move-result v3

    const/16 v4, 0x8

    if-ne v3, v4, :cond_0

    .line 1222
    goto :goto_1

    .line 1224
    :cond_0
    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    move-object v10, v3

    check-cast v10, Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout$LayoutParams;

    .line 1225
    .local v10, "lp":Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout$LayoutParams;
    const/4 v3, 0x0

    invoke-virtual {v10, v3}, Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout$LayoutParams;->isNestedScrollAccepted(I)Z

    move-result v3

    if-nez v3, :cond_1

    .line 1226
    goto :goto_1

    .line 1228
    :cond_1
    invoke-virtual {v10}, Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout$LayoutParams;->getBehavior()Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout$Behavior;

    move-result-object v11

    .line 1229
    .local v11, "viewBehavior":Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout$Behavior;
    if-eqz v11, :cond_2

    .line 1230
    move-object v3, v11

    move-object v4, p0

    move-object v5, v9

    move-object v6, p1

    move v7, p2

    move v8, p3

    invoke-virtual/range {v3 .. v8}, Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout$Behavior;->onNestedPreFling(Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout;Landroid/view/View;Landroid/view/View;FF)Z

    move-result v3

    or-int/2addr v0, v3

    .line 1219
    .end local v9    # "view":Landroid/view/View;
    .end local v10    # "lp":Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout$LayoutParams;
    .end local v11    # "viewBehavior":Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout$Behavior;
    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1233
    .end local v2    # "i":I
    :cond_3
    return v0
.end method

.method public onNestedPreScroll(Landroid/view/View;II[I)V
    .locals 6
    .param p1, "var1"    # Landroid/view/View;
    .param p2, "var2"    # I
    .param p3, "var3"    # I
    .param p4, "var4"    # [I

    .line 1238
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout;->onNestedPreScroll(Landroid/view/View;II[II)V

    .line 1239
    return-void
.end method

.method public onNestedPreScroll(Landroid/view/View;II[II)V
    .locals 23
    .param p1, "var1"    # Landroid/view/View;
    .param p2, "var2"    # I
    .param p3, "var3"    # I
    .param p4, "var4"    # [I
    .param p5, "var5"    # I

    .line 1242
    move-object/from16 v8, p0

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout;->getChildCount()I

    move-result v9

    .line 1243
    .local v9, "var6":I
    const/4 v0, 0x0

    .line 1244
    .local v0, "var7":B
    move v1, v0

    .line 1245
    .local v1, "var10":I
    move v2, v0

    .line 1248
    .local v2, "var11":I
    move v3, v0

    move v10, v0

    move v11, v1

    move v12, v2

    move v13, v3

    .end local v0    # "var7":B
    .end local v1    # "var10":I
    .end local v2    # "var11":I
    .local v10, "var7":B
    .local v11, "var10":I
    .local v12, "var11":I
    .local v13, "var12":I
    :goto_0
    const/4 v14, 0x1

    const/4 v15, 0x0

    if-ge v13, v9, :cond_5

    .line 1249
    invoke-virtual {v8, v13}, Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v16

    .line 1251
    .local v16, "var13":Landroid/view/View;
    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    .line 1252
    move v0, v12

    .line 1253
    .local v0, "var9":I
    move v1, v11

    .local v1, "var8":I
    goto/16 :goto_3

    .line 1255
    .end local v0    # "var9":I
    .end local v1    # "var8":I
    :cond_0
    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout$LayoutParams;

    .line 1256
    .local v7, "var14":Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout$LayoutParams;
    move/from16 v6, p5

    invoke-virtual {v7, v6}, Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout$LayoutParams;->isNestedScrollAccepted(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1257
    move v0, v12

    .line 1258
    .restart local v0    # "var9":I
    move v1, v11

    .restart local v1    # "var8":I
    goto/16 :goto_3

    .line 1260
    .end local v0    # "var9":I
    .end local v1    # "var8":I
    :cond_1
    invoke-virtual {v7}, Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout$LayoutParams;->getBehavior()Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout$Behavior;

    move-result-object v17

    .line 1261
    .local v17, "var16":Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout$Behavior;
    move/from16 v18, v12

    .line 1262
    .local v18, "var9":I
    move/from16 v19, v11

    .line 1263
    .local v19, "var8":I
    if-eqz v17, :cond_4

    .line 1264
    iget-object v5, v8, Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout;->mBehaviorConsumed:[I

    .line 1265
    .local v5, "var15":[I
    aput v15, v5, v15

    .line 1266
    aput v15, v5, v14

    .line 1267
    move-object/from16 v0, v17

    move-object/from16 v1, p0

    move-object/from16 v2, v16

    move-object/from16 v3, p1

    move/from16 v4, p2

    move-object/from16 v20, v5

    .end local v5    # "var15":[I
    .local v20, "var15":[I
    move/from16 v5, p3

    move-object/from16 v6, v20

    move-object/from16 v21, v7

    .end local v7    # "var14":Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout$LayoutParams;
    .local v21, "var14":Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout$LayoutParams;
    move/from16 v7, p5

    invoke-virtual/range {v0 .. v7}, Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout$Behavior;->onNestedPreScroll(Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout;Landroid/view/View;Landroid/view/View;II[II)V

    .line 1268
    if-lez p2, :cond_2

    .line 1269
    iget-object v0, v8, Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout;->mBehaviorConsumed:[I

    aget v0, v0, v15

    invoke-static {v12, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .end local v19    # "var8":I
    .local v0, "var8":I
    goto :goto_1

    .line 1271
    .end local v0    # "var8":I
    .restart local v19    # "var8":I
    :cond_2
    iget-object v0, v8, Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout;->mBehaviorConsumed:[I

    aget v0, v0, v15

    invoke-static {v12, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 1274
    .end local v19    # "var8":I
    .restart local v0    # "var8":I
    :goto_1
    if-lez p3, :cond_3

    .line 1275
    iget-object v1, v8, Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout;->mBehaviorConsumed:[I

    aget v1, v1, v14

    invoke-static {v11, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .end local v18    # "var9":I
    .local v1, "var9":I
    goto :goto_2

    .line 1277
    .end local v1    # "var9":I
    .restart local v18    # "var9":I
    :cond_3
    iget-object v1, v8, Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout;->mBehaviorConsumed:[I

    aget v1, v1, v14

    invoke-static {v11, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 1280
    .end local v18    # "var9":I
    .restart local v1    # "var9":I
    :goto_2
    move v11, v0

    .line 1281
    move v0, v1

    .line 1282
    const/4 v2, 0x1

    .line 1283
    .end local v10    # "var7":B
    .local v2, "var7":B
    move v1, v11

    move v10, v2

    move/from16 v22, v1

    move v1, v0

    move/from16 v0, v22

    goto :goto_3

    .line 1263
    .end local v0    # "var8":I
    .end local v1    # "var9":I
    .end local v2    # "var7":B
    .end local v20    # "var15":[I
    .end local v21    # "var14":Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout$LayoutParams;
    .restart local v7    # "var14":Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout$LayoutParams;
    .restart local v10    # "var7":B
    .restart local v18    # "var9":I
    .restart local v19    # "var8":I
    :cond_4
    move-object/from16 v21, v7

    .end local v7    # "var14":Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout$LayoutParams;
    .restart local v21    # "var14":Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout$LayoutParams;
    move/from16 v0, v18

    move/from16 v1, v19

    .line 1288
    .end local v17    # "var16":Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout$Behavior;
    .end local v18    # "var9":I
    .end local v19    # "var8":I
    .end local v21    # "var14":Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout$LayoutParams;
    .local v0, "var9":I
    .local v1, "var8":I
    :goto_3
    add-int/lit8 v13, v13, 0x1

    .line 1289
    move v12, v0

    .line 1248
    .end local v0    # "var9":I
    .end local v16    # "var13":Landroid/view/View;
    move v11, v1

    goto/16 :goto_0

    .line 1292
    .end local v1    # "var8":I
    .end local v13    # "var12":I
    :cond_5
    aput v12, p4, v15

    .line 1293
    aput v11, p4, v14

    .line 1294
    if-eqz v10, :cond_6

    .line 1295
    invoke-virtual {v8, v14}, Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout;->onChildViewsChanged(I)V

    .line 1298
    :cond_6
    return-void
.end method

.method public onNestedScroll(Landroid/view/View;IIII)V
    .locals 7
    .param p1, "var1"    # Landroid/view/View;
    .param p2, "var2"    # I
    .param p3, "var3"    # I
    .param p4, "var4"    # I
    .param p5, "var5"    # I

    .line 1302
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v6}, Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout;->onNestedScroll(Landroid/view/View;IIIII)V

    .line 1303
    return-void
.end method

.method public onNestedScroll(Landroid/view/View;IIIII)V
    .locals 8
    .param p1, "var1"    # Landroid/view/View;
    .param p2, "var2"    # I
    .param p3, "var3"    # I
    .param p4, "var4"    # I
    .param p5, "var5"    # I
    .param p6, "var6"    # I

    .line 1307
    iget-object v7, p0, Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout;->mNestedScrollingV2ConsumedCompat:[I

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v7}, Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout;->onNestedScroll(Landroid/view/View;IIIII[I)V

    .line 1308
    return-void
.end method

.method public onNestedScroll(Landroid/view/View;IIIII[I)V
    .locals 25
    .param p1, "var1"    # Landroid/view/View;
    .param p2, "var2"    # I
    .param p3, "var3"    # I
    .param p4, "var4"    # I
    .param p5, "var5"    # I
    .param p6, "var6"    # I
    .param p7, "var7"    # [I

    .line 1311
    move-object/from16 v10, p0

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout;->getChildCount()I

    move-result v11

    .line 1312
    .local v11, "var8":I
    const/4 v0, 0x0

    .line 1313
    .local v0, "var9":B
    move v1, v0

    .line 1314
    .local v1, "var12":I
    move v2, v0

    .line 1317
    .local v2, "var13":I
    move v3, v0

    move v12, v0

    move v13, v1

    move v14, v2

    move v15, v3

    .end local v0    # "var9":B
    .end local v1    # "var12":I
    .end local v2    # "var13":I
    .local v12, "var9":B
    .local v13, "var12":I
    .local v14, "var13":I
    .local v15, "var14":I
    :goto_0
    const/4 v9, 0x1

    const/16 v16, 0x0

    if-ge v15, v11, :cond_5

    .line 1318
    invoke-virtual {v10, v15}, Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v17

    .line 1320
    .local v17, "var15":Landroid/view/View;
    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    .line 1321
    move v0, v14

    .line 1322
    .local v0, "var11":I
    move v1, v13

    move/from16 v23, v11

    .local v1, "var10":I
    goto/16 :goto_3

    .line 1324
    .end local v0    # "var11":I
    .end local v1    # "var10":I
    :cond_0
    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout$LayoutParams;

    .line 1325
    .local v8, "var16":Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout$LayoutParams;
    move/from16 v7, p6

    invoke-virtual {v8, v7}, Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout$LayoutParams;->isNestedScrollAccepted(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1326
    move v0, v14

    .line 1327
    .restart local v0    # "var11":I
    move v1, v13

    move/from16 v23, v11

    .restart local v1    # "var10":I
    goto/16 :goto_3

    .line 1329
    .end local v0    # "var11":I
    .end local v1    # "var10":I
    :cond_1
    invoke-virtual {v8}, Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout$LayoutParams;->getBehavior()Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout$Behavior;

    move-result-object v18

    .line 1330
    .local v18, "var17":Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout$Behavior;
    move/from16 v19, v14

    .line 1331
    .local v19, "var11":I
    move/from16 v20, v13

    .line 1332
    .local v20, "var10":I
    if-eqz v18, :cond_4

    .line 1333
    iget-object v6, v10, Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout;->mBehaviorConsumed:[I

    .line 1334
    .local v6, "var18":[I
    aput v16, v6, v16

    .line 1335
    aput v16, v6, v9

    .line 1336
    move-object/from16 v0, v18

    move-object/from16 v1, p0

    move-object/from16 v2, v17

    move-object/from16 v3, p1

    move/from16 v4, p2

    move/from16 v5, p3

    move-object/from16 v21, v6

    .end local v6    # "var18":[I
    .local v21, "var18":[I
    move/from16 v6, p4

    move/from16 v7, p5

    move-object/from16 v22, v8

    .end local v8    # "var16":Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout$LayoutParams;
    .local v22, "var16":Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout$LayoutParams;
    move/from16 v8, p6

    move/from16 v23, v11

    move v11, v9

    .end local v11    # "var8":I
    .local v23, "var8":I
    move-object/from16 v9, v21

    invoke-virtual/range {v0 .. v9}, Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout$Behavior;->onNestedScroll(Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout;Landroid/view/View;Landroid/view/View;IIIII[I)V

    .line 1337
    if-lez p4, :cond_2

    .line 1338
    iget-object v0, v10, Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout;->mBehaviorConsumed:[I

    aget v0, v0, v16

    invoke-static {v14, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .end local v20    # "var10":I
    .local v0, "var10":I
    goto :goto_1

    .line 1340
    .end local v0    # "var10":I
    .restart local v20    # "var10":I
    :cond_2
    iget-object v0, v10, Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout;->mBehaviorConsumed:[I

    aget v0, v0, v16

    invoke-static {v14, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 1343
    .end local v20    # "var10":I
    .restart local v0    # "var10":I
    :goto_1
    if-lez p5, :cond_3

    .line 1344
    iget-object v1, v10, Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout;->mBehaviorConsumed:[I

    aget v1, v1, v11

    invoke-static {v13, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .end local v19    # "var11":I
    .local v1, "var11":I
    goto :goto_2

    .line 1346
    .end local v1    # "var11":I
    .restart local v19    # "var11":I
    :cond_3
    iget-object v1, v10, Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout;->mBehaviorConsumed:[I

    aget v1, v1, v11

    invoke-static {v13, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 1349
    .end local v19    # "var11":I
    .restart local v1    # "var11":I
    :goto_2
    move v13, v0

    .line 1350
    move v0, v1

    .line 1351
    const/4 v2, 0x1

    .line 1352
    .end local v12    # "var9":B
    .local v2, "var9":B
    move v1, v13

    move v12, v2

    move/from16 v24, v1

    move v1, v0

    move/from16 v0, v24

    goto :goto_3

    .line 1332
    .end local v0    # "var10":I
    .end local v1    # "var11":I
    .end local v2    # "var9":B
    .end local v21    # "var18":[I
    .end local v22    # "var16":Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout$LayoutParams;
    .end local v23    # "var8":I
    .restart local v8    # "var16":Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout$LayoutParams;
    .restart local v11    # "var8":I
    .restart local v12    # "var9":B
    .restart local v19    # "var11":I
    .restart local v20    # "var10":I
    :cond_4
    move-object/from16 v22, v8

    move/from16 v23, v11

    .end local v8    # "var16":Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout$LayoutParams;
    .end local v11    # "var8":I
    .restart local v22    # "var16":Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout$LayoutParams;
    .restart local v23    # "var8":I
    move/from16 v0, v19

    move/from16 v1, v20

    .line 1357
    .end local v18    # "var17":Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout$Behavior;
    .end local v19    # "var11":I
    .end local v20    # "var10":I
    .end local v22    # "var16":Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout$LayoutParams;
    .local v0, "var11":I
    .local v1, "var10":I
    :goto_3
    add-int/lit8 v15, v15, 0x1

    .line 1358
    move v14, v0

    .line 1317
    .end local v0    # "var11":I
    .end local v17    # "var15":Landroid/view/View;
    move v13, v1

    move/from16 v11, v23

    goto/16 :goto_0

    .end local v1    # "var10":I
    .end local v23    # "var8":I
    .restart local v11    # "var8":I
    :cond_5
    move/from16 v23, v11

    move v11, v9

    .line 1361
    .end local v11    # "var8":I
    .end local v15    # "var14":I
    .restart local v23    # "var8":I
    aget v0, p7, v16

    add-int/2addr v0, v14

    aput v0, p7, v16

    .line 1362
    aget v0, p7, v11

    add-int/2addr v0, v13

    aput v0, p7, v11

    .line 1363
    if-eqz v12, :cond_6

    .line 1364
    invoke-virtual {v10, v11}, Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout;->onChildViewsChanged(I)V

    .line 1367
    :cond_6
    return-void
.end method

.method public onNestedScrollAccepted(Landroid/view/View;Landroid/view/View;I)V
    .locals 1
    .param p1, "var1"    # Landroid/view/View;
    .param p2, "var2"    # Landroid/view/View;
    .param p3, "var3"    # I

    .line 1371
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout;->onNestedScrollAccepted(Landroid/view/View;Landroid/view/View;II)V

    .line 1372
    return-void
.end method

.method public onNestedScrollAccepted(Landroid/view/View;Landroid/view/View;II)V
    .locals 17
    .param p1, "var1"    # Landroid/view/View;
    .param p2, "var2"    # Landroid/view/View;
    .param p3, "var3"    # I
    .param p4, "var4"    # I

    .line 1375
    move-object/from16 v7, p0

    move-object/from16 v8, p2

    move/from16 v9, p4

    iget-object v0, v7, Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout;->mNestedScrollingParentHelper:Landroidx/core/view/NestedScrollingParentHelper;

    move-object/from16 v10, p1

    move/from16 v11, p3

    invoke-virtual {v0, v10, v8, v11, v9}, Landroidx/core/view/NestedScrollingParentHelper;->onNestedScrollAccepted(Landroid/view/View;Landroid/view/View;II)V

    .line 1376
    iput-object v8, v7, Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout;->mNestedScrollingTarget:Landroid/view/View;

    .line 1377
    iput-object v8, v7, Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout;->mLastNestedScrollingChild:Landroid/view/View;

    .line 1378
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout;->getChildCount()I

    move-result v12

    .line 1380
    .local v12, "var5":I
    const/4 v0, 0x0

    move v13, v0

    .local v13, "var6":I
    :goto_0
    if-ge v13, v12, :cond_1

    .line 1381
    invoke-virtual {v7, v13}, Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v14

    .line 1382
    .local v14, "var7":Landroid/view/View;
    invoke-virtual {v14}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    move-object v15, v0

    check-cast v15, Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout$LayoutParams;

    .line 1383
    .local v15, "var8":Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout$LayoutParams;
    invoke-virtual {v15, v9}, Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout$LayoutParams;->isNestedScrollAccepted(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1384
    invoke-virtual {v15}, Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout$LayoutParams;->getBehavior()Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout$Behavior;

    move-result-object v16

    .line 1385
    .local v16, "var9":Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout$Behavior;
    if-eqz v16, :cond_0

    .line 1386
    move-object/from16 v0, v16

    move-object/from16 v1, p0

    move-object v2, v14

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    invoke-virtual/range {v0 .. v6}, Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout$Behavior;->onNestedScrollAccepted(Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout;Landroid/view/View;Landroid/view/View;Landroid/view/View;II)V

    .line 1380
    .end local v14    # "var7":Landroid/view/View;
    .end local v15    # "var8":Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout$LayoutParams;
    .end local v16    # "var9":Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout$Behavior;
    :cond_0
    add-int/lit8 v13, v13, 0x1

    goto :goto_0

    .line 1391
    .end local v13    # "var6":I
    :cond_1
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 8
    .param p1, "var1"    # Landroid/os/Parcelable;

    .line 1394
    instance-of v0, p1, Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout$SavedState;

    if-nez v0, :cond_0

    .line 1395
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    goto :goto_1

    .line 1397
    :cond_0
    move-object v0, p1

    check-cast v0, Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout$SavedState;

    .line 1398
    .local v0, "var8":Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout$SavedState;
    invoke-virtual {v0}, Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 1399
    iget-object v1, v0, Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout$SavedState;->behaviorStates:Landroid/util/SparseArray;

    .line 1400
    .local v1, "var9":Landroid/util/SparseArray;
    const/4 v2, 0x0

    .line 1402
    .local v2, "var2":I
    invoke-virtual {p0}, Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout;->getChildCount()I

    move-result v3

    .local v3, "var3":I
    :goto_0
    if-ge v2, v3, :cond_2

    .line 1403
    invoke-virtual {p0, v2}, Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 1404
    .local v4, "var4":Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getId()I

    move-result v5

    .line 1405
    .local v5, "var5":I
    invoke-virtual {p0, v4}, Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout;->getResolvedLayoutParams(Landroid/view/View;)Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout$LayoutParams;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout$LayoutParams;->getBehavior()Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout$Behavior;

    move-result-object v6

    .line 1406
    .local v6, "var6":Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout$Behavior;
    const/4 v7, -0x1

    if-eq v5, v7, :cond_1

    if-eqz v6, :cond_1

    .line 1407
    invoke-virtual {v1, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/os/Parcelable;

    .line 1408
    .local v7, "var7":Landroid/os/Parcelable;
    if-eqz v7, :cond_1

    .line 1409
    invoke-virtual {v6, p0, v4, v7}, Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout$Behavior;->onRestoreInstanceState(Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout;Landroid/view/View;Landroid/os/Parcelable;)V

    .line 1402
    .end local v4    # "var4":Landroid/view/View;
    .end local v5    # "var5":I
    .end local v6    # "var6":Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout$Behavior;
    .end local v7    # "var7":Landroid/os/Parcelable;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1415
    .end local v0    # "var8":Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout$SavedState;
    .end local v1    # "var9":Landroid/util/SparseArray;
    .end local v2    # "var2":I
    .end local v3    # "var3":I
    :cond_2
    :goto_1
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 8

    .line 1418
    new-instance v0, Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout$SavedState;

    invoke-super {p0}, Landroid/view/ViewGroup;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 1419
    .local v0, "var1":Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout$SavedState;
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    .line 1420
    .local v1, "var2":Landroid/util/SparseArray;
    invoke-virtual {p0}, Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout;->getChildCount()I

    move-result v2

    .line 1422
    .local v2, "var3":I
    const/4 v3, 0x0

    .local v3, "var4":I
    :goto_0
    if-ge v3, v2, :cond_1

    .line 1423
    invoke-virtual {p0, v3}, Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 1424
    .local v4, "var5":Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getId()I

    move-result v5

    .line 1425
    .local v5, "var6":I
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout$LayoutParams;

    invoke-virtual {v6}, Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout$LayoutParams;->getBehavior()Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout$Behavior;

    move-result-object v6

    .line 1426
    .local v6, "var7":Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout$Behavior;
    const/4 v7, -0x1

    if-eq v5, v7, :cond_0

    if-eqz v6, :cond_0

    .line 1427
    invoke-virtual {v6, p0, v4}, Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout$Behavior;->onSaveInstanceState(Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout;Landroid/view/View;)Landroid/os/Parcelable;

    move-result-object v7

    .line 1428
    .local v7, "var8":Landroid/os/Parcelable;
    if-eqz v7, :cond_0

    .line 1429
    invoke-virtual {v1, v5, v7}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1422
    .end local v4    # "var5":Landroid/view/View;
    .end local v5    # "var6":I
    .end local v6    # "var7":Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout$Behavior;
    .end local v7    # "var8":Landroid/os/Parcelable;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1434
    .end local v3    # "var4":I
    :cond_1
    iput-object v1, v0, Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout$SavedState;->behaviorStates:Landroid/util/SparseArray;

    .line 1435
    return-object v0
.end method

.method public onStartNestedScroll(Landroid/view/View;Landroid/view/View;I)Z
    .locals 1
    .param p1, "var1"    # Landroid/view/View;
    .param p2, "var2"    # Landroid/view/View;
    .param p3, "var3"    # I

    .line 1440
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout;->onStartNestedScroll(Landroid/view/View;Landroid/view/View;II)Z

    move-result v0

    return v0
.end method

.method public onStartNestedScroll(Landroid/view/View;Landroid/view/View;II)Z
    .locals 15
    .param p1, "child"    # Landroid/view/View;
    .param p2, "target"    # Landroid/view/View;
    .param p3, "axes"    # I
    .param p4, "type"    # I

    .line 1444
    move/from16 v7, p4

    const/4 v0, 0x0

    .line 1445
    .local v0, "handled":Z
    invoke-virtual {p0}, Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout;->getChildCount()I

    move-result v8

    .line 1446
    .local v8, "childCount":I
    const/4 v1, 0x0

    move v9, v0

    move v10, v1

    .end local v0    # "handled":Z
    .local v9, "handled":Z
    .local v10, "i":I
    :goto_0
    if-ge v10, v8, :cond_2

    .line 1447
    move-object v11, p0

    invoke-virtual {p0, v10}, Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v12

    .line 1448
    .local v12, "view":Landroid/view/View;
    invoke-virtual {v12}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    .line 1449
    goto :goto_1

    .line 1451
    :cond_0
    invoke-virtual {v12}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    move-object v13, v0

    check-cast v13, Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout$LayoutParams;

    .line 1452
    .local v13, "lp":Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout$LayoutParams;
    invoke-virtual {v13}, Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout$LayoutParams;->getBehavior()Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout$Behavior;

    move-result-object v14

    .line 1453
    .local v14, "viewBehavior":Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout$Behavior;
    if-eqz v14, :cond_1

    .line 1454
    move-object v0, v14

    move-object v1, p0

    move-object v2, v12

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    invoke-virtual/range {v0 .. v6}, Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout$Behavior;->onStartNestedScroll(Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout;Landroid/view/View;Landroid/view/View;Landroid/view/View;II)Z

    move-result v0

    .line 1455
    .local v0, "accepted":Z
    or-int v1, v9, v0

    .line 1456
    .end local v9    # "handled":Z
    .local v1, "handled":Z
    invoke-virtual {v13, v7, v0}, Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout$LayoutParams;->setNestedScrollAccepted(IZ)V

    .line 1457
    .end local v0    # "accepted":Z
    move v9, v1

    goto :goto_1

    .line 1458
    .end local v1    # "handled":Z
    .restart local v9    # "handled":Z
    :cond_1
    const/4 v0, 0x0

    invoke-virtual {v13, v7, v0}, Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout$LayoutParams;->setNestedScrollAccepted(IZ)V

    .line 1446
    .end local v12    # "view":Landroid/view/View;
    .end local v13    # "lp":Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout$LayoutParams;
    .end local v14    # "viewBehavior":Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout$Behavior;
    :goto_1
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    :cond_2
    move-object v11, p0

    .line 1461
    .end local v10    # "i":I
    return v9
.end method

.method public onStopNestedScroll(Landroid/view/View;)V
    .locals 1
    .param p1, "var1"    # Landroid/view/View;

    .line 1466
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout;->onStopNestedScroll(Landroid/view/View;I)V

    .line 1467
    return-void
.end method

.method public onStopNestedScroll(Landroid/view/View;I)V
    .locals 5
    .param p1, "var1"    # Landroid/view/View;
    .param p2, "var2"    # I

    .line 1470
    iget-object v0, p0, Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout;->mNestedScrollingParentHelper:Landroidx/core/view/NestedScrollingParentHelper;

    invoke-virtual {v0, p1, p2}, Landroidx/core/view/NestedScrollingParentHelper;->onStopNestedScroll(Landroid/view/View;I)V

    .line 1471
    iput-object p1, p0, Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout;->mLastNestedScrollingChild:Landroid/view/View;

    .line 1472
    invoke-virtual {p0}, Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout;->getChildCount()I

    move-result v0

    .line 1474
    .local v0, "var3":I
    const/4 v1, 0x0

    .local v1, "var4":I
    :goto_0
    if-ge v1, v0, :cond_2

    .line 1475
    invoke-virtual {p0, v1}, Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1476
    .local v2, "var5":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout$LayoutParams;

    .line 1477
    .local v3, "var6":Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout$LayoutParams;
    invoke-virtual {v3, p2}, Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout$LayoutParams;->isNestedScrollAccepted(I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1478
    invoke-virtual {v3}, Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout$LayoutParams;->getBehavior()Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout$Behavior;

    move-result-object v4

    .line 1479
    .local v4, "var7":Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout$Behavior;
    if-eqz v4, :cond_0

    .line 1480
    invoke-virtual {v4, p0, v2, p1, p2}, Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout$Behavior;->onStopNestedScroll(Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout;Landroid/view/View;Landroid/view/View;I)V

    .line 1483
    :cond_0
    invoke-virtual {v3, p2}, Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout$LayoutParams;->resetNestedScroll(I)V

    .line 1484
    invoke-virtual {v3}, Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout$LayoutParams;->resetChangedAfterNestedScroll()V

    .line 1474
    .end local v2    # "var5":Landroid/view/View;
    .end local v3    # "var6":Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout$LayoutParams;
    .end local v4    # "var7":Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout$Behavior;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1488
    .end local v1    # "var4":I
    :cond_2
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout;->mNestedScrollingTarget:Landroid/view/View;

    .line 1489
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 18
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 1492
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v2, 0x0

    .line 1493
    .local v2, "handled":Z
    const/4 v3, 0x0

    .line 1494
    .local v3, "cancelSuper":Z
    const/4 v4, 0x0

    .line 1495
    .local v4, "cancelEvent":Landroid/view/MotionEvent;
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v5

    .line 1496
    .local v5, "action":I
    iget-object v6, v0, Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout;->mBehaviorTouchView:Landroid/view/View;

    const/4 v7, 0x1

    if-nez v6, :cond_0

    invoke-virtual {v0, v1, v7}, Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout;->performIntercept(Landroid/view/MotionEvent;I)Z

    move-result v6

    move v3, v6

    if-eqz v6, :cond_1

    .line 1497
    :cond_0
    iget-object v6, v0, Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout;->mBehaviorTouchView:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout$LayoutParams;

    .line 1498
    .local v6, "lp":Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout$LayoutParams;
    invoke-virtual {v6}, Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout$LayoutParams;->getBehavior()Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout$Behavior;

    move-result-object v8

    .line 1499
    .local v8, "b":Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout$Behavior;
    if-eqz v8, :cond_1

    .line 1500
    iget-object v9, v0, Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout;->mBehaviorTouchView:Landroid/view/View;

    invoke-virtual {v8, v0, v9, v1}, Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout$Behavior;->onTouchEvent(Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout;Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v2

    .line 1503
    .end local v6    # "lp":Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout$LayoutParams;
    .end local v8    # "b":Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout$Behavior;
    :cond_1
    iget-object v6, v0, Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout;->mBehaviorTouchView:Landroid/view/View;

    if-nez v6, :cond_2

    .line 1504
    invoke-super/range {p0 .. p1}, Landroid/view/ViewGroup;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v6

    or-int/2addr v2, v6

    goto :goto_0

    .line 1505
    :cond_2
    if-eqz v3, :cond_4

    .line 1506
    if-nez v4, :cond_3

    .line 1507
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v16

    .line 1508
    .local v16, "now":J
    const/4 v12, 0x3

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-wide/from16 v8, v16

    move-wide/from16 v10, v16

    invoke-static/range {v8 .. v15}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v4

    .line 1510
    .end local v16    # "now":J
    :cond_3
    invoke-super {v0, v4}, Landroid/view/ViewGroup;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 1512
    :cond_4
    :goto_0
    if-eqz v4, :cond_5

    .line 1513
    invoke-virtual {v4}, Landroid/view/MotionEvent;->recycle()V

    .line 1515
    :cond_5
    if-eq v5, v7, :cond_6

    const/4 v6, 0x3

    if-ne v5, v6, :cond_7

    .line 1516
    :cond_6
    const/4 v6, 0x0

    invoke-virtual {v0, v6}, Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout;->resetTouchBehaviors(Z)V

    .line 1518
    :cond_7
    return v2
.end method

.method public final performIntercept(Landroid/view/MotionEvent;I)Z
    .locals 22
    .param p1, "ev"    # Landroid/view/MotionEvent;
    .param p2, "type"    # I

    .line 1522
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v2, 0x0

    .line 1523
    .local v2, "intercepted":Z
    const/4 v3, 0x0

    .line 1524
    .local v3, "newBlock":Z
    const/4 v4, 0x0

    .line 1525
    .local v4, "cancelEvent":Landroid/view/MotionEvent;
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v5

    .line 1526
    .local v5, "action":I
    iget-object v6, v0, Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout;->mTempList1:Ljava/util/List;

    .line 1527
    .local v6, "topmostChildList":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    invoke-virtual {v0, v6}, Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout;->getTopSortedChildren(Ljava/util/List;)V

    .line 1528
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    .line 1529
    .local v7, "childCount":I
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    if-ge v8, v7, :cond_6

    .line 1530
    invoke-interface {v6, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/view/View;

    .line 1531
    .local v9, "child":Landroid/view/View;
    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    check-cast v10, Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout$LayoutParams;

    .line 1532
    .local v10, "lp":Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout$LayoutParams;
    invoke-virtual {v10}, Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout$LayoutParams;->getBehavior()Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout$Behavior;

    move-result-object v11

    .line 1533
    .local v11, "b":Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout$Behavior;
    if-nez v2, :cond_0

    if-eqz v3, :cond_2

    :cond_0
    if-eqz v5, :cond_2

    .line 1534
    if-eqz v11, :cond_5

    .line 1535
    if-nez v4, :cond_1

    .line 1536
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v20

    .line 1537
    .local v20, "now":J
    const/16 v16, 0x3

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-wide/from16 v12, v20

    move-wide/from16 v14, v20

    invoke-static/range {v12 .. v19}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v4

    .line 1539
    .end local v20    # "now":J
    :cond_1
    packed-switch p2, :pswitch_data_0

    goto :goto_1

    .line 1544
    :pswitch_0
    invoke-virtual {v11, v0, v9, v4}, Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout$Behavior;->onTouchEvent(Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout;Landroid/view/View;Landroid/view/MotionEvent;)Z

    goto :goto_1

    .line 1541
    :pswitch_1
    invoke-virtual {v11, v0, v9, v4}, Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout$Behavior;->onInterceptTouchEvent(Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout;Landroid/view/View;Landroid/view/MotionEvent;)Z

    .line 1542
    nop

    .line 1545
    :goto_1
    goto :goto_4

    .line 1550
    :cond_2
    if-nez v2, :cond_3

    if-eqz v11, :cond_3

    .line 1551
    packed-switch p2, :pswitch_data_1

    goto :goto_2

    .line 1556
    :pswitch_2
    invoke-virtual {v11, v0, v9, v1}, Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout$Behavior;->onTouchEvent(Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout;Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v2

    goto :goto_2

    .line 1553
    :pswitch_3
    invoke-virtual {v11, v0, v9, v1}, Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout$Behavior;->onInterceptTouchEvent(Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout;Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v2

    .line 1554
    nop

    .line 1559
    :goto_2
    if-eqz v2, :cond_3

    .line 1560
    iput-object v9, v0, Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout;->mBehaviorTouchView:Landroid/view/View;

    .line 1563
    :cond_3
    invoke-virtual {v10}, Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout$LayoutParams;->didBlockInteraction()Z

    move-result v12

    .line 1564
    .local v12, "wasBlocking":Z
    invoke-virtual {v10, v0, v9}, Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout$LayoutParams;->isBlockingInteractionBelow(Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout;Landroid/view/View;)Z

    move-result v13

    .line 1565
    .local v13, "isBlocking":Z
    if-eqz v13, :cond_4

    if-nez v12, :cond_4

    const/4 v14, 0x1

    goto :goto_3

    :cond_4
    const/4 v14, 0x0

    :goto_3
    move v3, v14

    .line 1566
    if-eqz v13, :cond_5

    if-nez v3, :cond_5

    .line 1567
    goto :goto_5

    .line 1529
    .end local v9    # "child":Landroid/view/View;
    .end local v10    # "lp":Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout$LayoutParams;
    .end local v11    # "b":Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout$Behavior;
    .end local v12    # "wasBlocking":Z
    .end local v13    # "isBlocking":Z
    :cond_5
    :goto_4
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 1570
    .end local v8    # "i":I
    :cond_6
    :goto_5
    invoke-interface {v6}, Ljava/util/List;->clear()V

    .line 1571
    return v2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method public final prepareChildren()V
    .locals 7

    .line 1576
    iget-object v0, p0, Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout;->mDependencySortedChildren:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1577
    iget-object v0, p0, Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout;->mChildDag:Landroidx/coordinatorlayout/widget/DirectedAcyclicGraph;

    invoke-virtual {v0}, Landroidx/coordinatorlayout/widget/DirectedAcyclicGraph;->clear()V

    .line 1578
    invoke-virtual {p0}, Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout;->getChildCount()I

    move-result v0

    .line 1580
    .local v0, "var1":I
    const/4 v1, 0x0

    .local v1, "var2":I
    :goto_0
    if-ge v1, v0, :cond_3

    .line 1581
    invoke-virtual {p0, v1}, Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1582
    .local v2, "var3":Landroid/view/View;
    invoke-virtual {p0, v2}, Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout;->getResolvedLayoutParams(Landroid/view/View;)Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout$LayoutParams;

    move-result-object v3

    .line 1583
    .local v3, "var4":Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout$LayoutParams;
    invoke-virtual {v3, p0, v2}, Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout$LayoutParams;->findAnchorView(Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout;Landroid/view/View;)Landroid/view/View;

    .line 1584
    iget-object v4, p0, Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout;->mChildDag:Landroidx/coordinatorlayout/widget/DirectedAcyclicGraph;

    invoke-virtual {v4, v2}, Landroidx/coordinatorlayout/widget/DirectedAcyclicGraph;->addNode(Ljava/lang/Object;)V

    .line 1586
    const/4 v4, 0x0

    .local v4, "var5":I
    :goto_1
    if-ge v4, v0, :cond_2

    .line 1587
    if-eq v4, v1, :cond_1

    .line 1588
    invoke-virtual {p0, v4}, Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 1589
    .local v5, "var6":Landroid/view/View;
    invoke-virtual {v3, p0, v2, v5}, Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout$LayoutParams;->dependsOn(Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout;Landroid/view/View;Landroid/view/View;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1590
    iget-object v6, p0, Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout;->mChildDag:Landroidx/coordinatorlayout/widget/DirectedAcyclicGraph;

    invoke-virtual {v6, v5}, Landroidx/coordinatorlayout/widget/DirectedAcyclicGraph;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 1591
    iget-object v6, p0, Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout;->mChildDag:Landroidx/coordinatorlayout/widget/DirectedAcyclicGraph;

    invoke-virtual {v6, v5}, Landroidx/coordinatorlayout/widget/DirectedAcyclicGraph;->addNode(Ljava/lang/Object;)V

    .line 1594
    :cond_0
    iget-object v6, p0, Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout;->mChildDag:Landroidx/coordinatorlayout/widget/DirectedAcyclicGraph;

    invoke-virtual {v6, v5, v2}, Landroidx/coordinatorlayout/widget/DirectedAcyclicGraph;->addEdge(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1586
    .end local v5    # "var6":Landroid/view/View;
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 1580
    .end local v2    # "var3":Landroid/view/View;
    .end local v3    # "var4":Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout$LayoutParams;
    .end local v4    # "var5":I
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1600
    .end local v1    # "var2":I
    :cond_3
    iget-object v1, p0, Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout;->mDependencySortedChildren:Ljava/util/List;

    iget-object v2, p0, Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout;->mChildDag:Landroidx/coordinatorlayout/widget/DirectedAcyclicGraph;

    invoke-virtual {v2}, Landroidx/coordinatorlayout/widget/DirectedAcyclicGraph;->getSortedList()Ljava/util/ArrayList;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1601
    iget-object v1, p0, Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout;->mDependencySortedChildren:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 1602
    return-void
.end method

.method public recordLastChildRect(Landroid/view/View;Landroid/graphics/Rect;)V
    .locals 1
    .param p1, "var1"    # Landroid/view/View;
    .param p2, "var2"    # Landroid/graphics/Rect;

    .line 1605
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout$LayoutParams;

    invoke-virtual {v0, p2}, Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout$LayoutParams;->setLastChildRect(Landroid/graphics/Rect;)V

    .line 1606
    return-void
.end method

.method public removePreDrawListener()V
    .locals 2

    .line 1609
    iget-boolean v0, p0, Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout;->mIsAttachedToWindow:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout;->mOnPreDrawListener:Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout$OnPreDrawListener;

    if-eqz v0, :cond_0

    .line 1610
    invoke-virtual {p0}, Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout;->mOnPreDrawListener:Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout$OnPreDrawListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 1613
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout;->mNeedsPreDrawListener:Z

    .line 1614
    return-void
.end method

.method public requestChildRectangleOnScreen(Landroid/view/View;Landroid/graphics/Rect;Z)Z
    .locals 2
    .param p1, "var1"    # Landroid/view/View;
    .param p2, "var2"    # Landroid/graphics/Rect;
    .param p3, "var3"    # Z

    .line 1617
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout$LayoutParams;

    invoke-virtual {v0}, Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout$LayoutParams;->getBehavior()Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout$Behavior;

    move-result-object v0

    .line 1618
    .local v0, "var4":Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout$Behavior;
    if-eqz v0, :cond_0

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout$Behavior;->onRequestChildRectangleOnScreen(Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout;Landroid/view/View;Landroid/graphics/Rect;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/view/ViewGroup;->requestChildRectangleOnScreen(Landroid/view/View;Landroid/graphics/Rect;Z)Z

    move-result v1

    :goto_0
    return v1
.end method

.method public requestDisallowInterceptTouchEvent(Z)V
    .locals 1
    .param p1, "var1"    # Z

    .line 1622
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->requestDisallowInterceptTouchEvent(Z)V

    .line 1623
    if-eqz p1, :cond_0

    iget-boolean v0, p0, Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout;->mDisallowInterceptReset:Z

    if-nez v0, :cond_0

    .line 1624
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout;->resetTouchBehaviors(Z)V

    .line 1625
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout;->mDisallowInterceptReset:Z

    .line 1628
    :cond_0
    return-void
.end method

.method public final resetTouchBehaviors(Z)V
    .locals 14
    .param p1, "var1"    # Z

    .line 1631
    invoke-virtual {p0}, Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout;->getChildCount()I

    move-result v0

    .line 1634
    .local v0, "var2":I
    const/4 v1, 0x0

    .local v1, "var3":I
    :goto_0
    if-ge v1, v0, :cond_2

    .line 1635
    invoke-virtual {p0, v1}, Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1636
    .local v2, "var4":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout$LayoutParams;

    invoke-virtual {v3}, Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout$LayoutParams;->getBehavior()Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout$Behavior;

    move-result-object v3

    .line 1637
    .local v3, "var5":Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout$Behavior;
    if-eqz v3, :cond_1

    .line 1638
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v12

    .line 1639
    .local v12, "var6":J
    const/4 v8, 0x3

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-wide v4, v12

    move-wide v6, v12

    invoke-static/range {v4 .. v11}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v4

    .line 1640
    .local v4, "var8":Landroid/view/MotionEvent;
    if-eqz p1, :cond_0

    .line 1641
    invoke-virtual {v3, p0, v2, v4}, Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout$Behavior;->onInterceptTouchEvent(Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout;Landroid/view/View;Landroid/view/MotionEvent;)Z

    goto :goto_1

    .line 1643
    :cond_0
    invoke-virtual {v3, p0, v2, v4}, Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout$Behavior;->onTouchEvent(Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout;Landroid/view/View;Landroid/view/MotionEvent;)Z

    .line 1646
    :goto_1
    invoke-virtual {v4}, Landroid/view/MotionEvent;->recycle()V

    .line 1634
    .end local v2    # "var4":Landroid/view/View;
    .end local v3    # "var5":Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout$Behavior;
    .end local v4    # "var8":Landroid/view/MotionEvent;
    .end local v12    # "var6":J
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1650
    :cond_2
    const/4 v1, 0x0

    :goto_2
    if-ge v1, v0, :cond_3

    .line 1651
    invoke-virtual {p0, v1}, Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout$LayoutParams;

    invoke-virtual {v2}, Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout$LayoutParams;->resetTouchBehaviorTracking()V

    .line 1650
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1654
    :cond_3
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout;->mBehaviorTouchView:Landroid/view/View;

    .line 1655
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout;->mDisallowInterceptReset:Z

    .line 1656
    return-void
.end method

.method public setFitsSystemWindows(Z)V
    .locals 0
    .param p1, "var1"    # Z

    .line 1659
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->setFitsSystemWindows(Z)V

    .line 1660
    invoke-virtual {p0}, Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout;->setupForInsets()V

    .line 1661
    return-void
.end method

.method public final setInsetOffsetX(Landroid/view/View;I)V
    .locals 3
    .param p1, "var1"    # Landroid/view/View;
    .param p2, "var2"    # I

    .line 1664
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout$LayoutParams;

    .line 1665
    .local v0, "var3":Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout$LayoutParams;
    iget v1, v0, Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout$LayoutParams;->mInsetOffsetX:I

    .line 1666
    .local v1, "var4":I
    if-eq v1, p2, :cond_0

    .line 1667
    sub-int v2, p2, v1

    invoke-static {p1, v2}, Landroidx/core/view/ViewCompat;->offsetLeftAndRight(Landroid/view/View;I)V

    .line 1668
    iput p2, v0, Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout$LayoutParams;->mInsetOffsetX:I

    .line 1671
    :cond_0
    return-void
.end method

.method public final setInsetOffsetY(Landroid/view/View;I)V
    .locals 3
    .param p1, "var1"    # Landroid/view/View;
    .param p2, "var2"    # I

    .line 1674
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout$LayoutParams;

    .line 1675
    .local v0, "var3":Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout$LayoutParams;
    iget v1, v0, Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout$LayoutParams;->mInsetOffsetY:I

    .line 1676
    .local v1, "var4":I
    if-eq v1, p2, :cond_0

    .line 1677
    sub-int v2, p2, v1

    invoke-static {p1, v2}, Landroidx/core/view/ViewCompat;->offsetTopAndBottom(Landroid/view/View;I)V

    .line 1678
    iput p2, v0, Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout$LayoutParams;->mInsetOffsetY:I

    .line 1681
    :cond_0
    return-void
.end method

.method public setOnHierarchyChangeListener(Landroid/view/ViewGroup$OnHierarchyChangeListener;)V
    .locals 0
    .param p1, "var1"    # Landroid/view/ViewGroup$OnHierarchyChangeListener;

    .line 1684
    iput-object p1, p0, Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout;->mOnHierarchyChangeListener:Landroid/view/ViewGroup$OnHierarchyChangeListener;

    .line 1685
    return-void
.end method

.method public setStatusBarBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 4
    .param p1, "var1"    # Landroid/graphics/drawable/Drawable;

    .line 1688
    iget-object v0, p0, Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout;->mStatusBarBackground:Landroid/graphics/drawable/Drawable;

    .line 1689
    .local v0, "var2":Landroid/graphics/drawable/Drawable;
    if-eq v0, p1, :cond_5

    .line 1690
    const/4 v1, 0x0

    .line 1691
    .local v1, "var3":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    .line 1692
    const/4 v2, 0x0

    check-cast v2, Landroid/graphics/drawable/Drawable$Callback;

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 1695
    :cond_0
    if-eqz p1, :cond_1

    .line 1696
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 1699
    :cond_1
    iput-object v1, p0, Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout;->mStatusBarBackground:Landroid/graphics/drawable/Drawable;

    .line 1700
    iget-object p1, p0, Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout;->mStatusBarBackground:Landroid/graphics/drawable/Drawable;

    .line 1701
    if-eqz p1, :cond_4

    .line 1702
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1703
    iget-object v2, p0, Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout;->mStatusBarBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout;->getDrawableState()[I

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 1706
    :cond_2
    iget-object v2, p0, Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout;->mStatusBarBackground:Landroid/graphics/drawable/Drawable;

    invoke-static {p0}, Landroidx/core/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v3

    invoke-static {v2, v3}, Landroidx/core/graphics/drawable/DrawableCompat;->setLayoutDirection(Landroid/graphics/drawable/Drawable;I)Z

    .line 1707
    iget-object p1, p0, Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout;->mStatusBarBackground:Landroid/graphics/drawable/Drawable;

    .line 1709
    invoke-virtual {p0}, Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout;->getVisibility()I

    move-result v2

    if-nez v2, :cond_3

    .line 1710
    const/4 v2, 0x1

    .local v2, "var4":Z
    goto :goto_0

    .line 1712
    .end local v2    # "var4":Z
    :cond_3
    const/4 v2, 0x0

    .line 1715
    .restart local v2    # "var4":Z
    :goto_0
    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 1716
    iget-object v3, p0, Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout;->mStatusBarBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 1719
    .end local v2    # "var4":Z
    :cond_4
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    .line 1722
    .end local v1    # "var3":Landroid/graphics/drawable/Drawable;
    :cond_5
    return-void
.end method

.method public setStatusBarBackgroundColor(I)V
    .locals 1
    .param p1, "var1"    # I

    .line 1725
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v0, p1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p0, v0}, Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout;->setStatusBarBackground(Landroid/graphics/drawable/Drawable;)V

    .line 1726
    return-void
.end method

.method public setStatusBarBackgroundResource(I)V
    .locals 1
    .param p1, "var1"    # I

    .line 1730
    if-eqz p1, :cond_0

    .line 1731
    invoke-virtual {p0}, Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .local v0, "var2":Landroid/graphics/drawable/Drawable;
    goto :goto_0

    .line 1733
    .end local v0    # "var2":Landroid/graphics/drawable/Drawable;
    :cond_0
    const/4 v0, 0x0

    .line 1736
    .restart local v0    # "var2":Landroid/graphics/drawable/Drawable;
    :goto_0
    invoke-virtual {p0, v0}, Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout;->setStatusBarBackground(Landroid/graphics/drawable/Drawable;)V

    .line 1737
    return-void
.end method

.method public setVisibility(I)V
    .locals 4
    .param p1, "var1"    # I

    .line 1740
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 1742
    if-nez p1, :cond_0

    .line 1743
    const/4 v0, 0x1

    .local v0, "var2":Z
    goto :goto_0

    .line 1745
    .end local v0    # "var2":Z
    :cond_0
    const/4 v0, 0x0

    .line 1748
    .restart local v0    # "var2":Z
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout;->mStatusBarBackground:Landroid/graphics/drawable/Drawable;

    .line 1749
    .local v1, "var3":Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->isVisible()Z

    move-result v2

    if-eq v2, v0, :cond_1

    .line 1750
    iget-object v2, p0, Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout;->mStatusBarBackground:Landroid/graphics/drawable/Drawable;

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 1753
    :cond_1
    return-void
.end method

.method public final setWindowInsets(Landroidx/core/view/WindowInsetsCompat;)Landroidx/core/view/WindowInsetsCompat;
    .locals 4
    .param p1, "var1"    # Landroidx/core/view/WindowInsetsCompat;

    .line 1756
    move-object v0, p1

    .line 1757
    .local v0, "var2":Landroidx/core/view/WindowInsetsCompat;
    iget-object v1, p0, Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout;->mLastInsets:Landroidx/core/view/WindowInsetsCompat;

    invoke-static {v1, p1}, Landroidx/core/util/ObjectsCompat;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 1758
    iput-object p1, p0, Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout;->mLastInsets:Landroidx/core/view/WindowInsetsCompat;

    .line 1759
    const/4 v1, 0x1

    .line 1761
    .local v1, "var3":Z
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroidx/core/view/WindowInsetsCompat;->getSystemWindowInsetTop()I

    move-result v2

    if-lez v2, :cond_0

    .line 1762
    const/4 v2, 0x1

    .local v2, "var4":Z
    goto :goto_0

    .line 1764
    .end local v2    # "var4":Z
    :cond_0
    const/4 v2, 0x0

    .line 1767
    .restart local v2    # "var4":Z
    :goto_0
    iput-boolean v2, p0, Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout;->mDrawStatusBarBackground:Z

    .line 1768
    if-nez v2, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    if-nez v3, :cond_1

    .line 1769
    move v2, v1

    goto :goto_1

    .line 1771
    :cond_1
    const/4 v2, 0x0

    .line 1774
    :goto_1
    invoke-virtual {p0, v2}, Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout;->setWillNotDraw(Z)V

    .line 1775
    invoke-virtual {p0, p1}, Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout;->dispatchApplyWindowInsetsToBehaviors(Landroidx/core/view/WindowInsetsCompat;)Landroidx/core/view/WindowInsetsCompat;

    move-result-object v0

    .line 1776
    invoke-virtual {p0}, Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout;->requestLayout()V

    .line 1779
    .end local v1    # "var3":Z
    .end local v2    # "var4":Z
    :cond_2
    return-object v0
.end method

.method public final setupForInsets()V
    .locals 2

    .line 1783
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_2

    .line 1784
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->getFitsSystemWindows(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1785
    iget-object v0, p0, Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout;->mApplyWindowInsetsListener:Landroidx/core/view/OnApplyWindowInsetsListener;

    if-nez v0, :cond_0

    .line 1786
    new-instance v0, Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout$1;-><init>(Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout;)V

    iput-object v0, p0, Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout;->mApplyWindowInsetsListener:Landroidx/core/view/OnApplyWindowInsetsListener;

    .line 1793
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout;->mApplyWindowInsetsListener:Landroidx/core/view/OnApplyWindowInsetsListener;

    invoke-static {p0, v0}, Landroidx/core/view/ViewCompat;->setOnApplyWindowInsetsListener(Landroid/view/View;Landroidx/core/view/OnApplyWindowInsetsListener;)V

    .line 1794
    const/16 v0, 0x500

    invoke-virtual {p0, v0}, Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout;->setSystemUiVisibility(I)V

    goto :goto_0

    .line 1796
    :cond_1
    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroidx/core/view/ViewCompat;->setOnApplyWindowInsetsListener(Landroid/view/View;Landroidx/core/view/OnApplyWindowInsetsListener;)V

    .line 1800
    :cond_2
    :goto_0
    return-void
.end method

.method public verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1
    .param p1, "var1"    # Landroid/graphics/drawable/Drawable;

    .line 1804
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout;->mStatusBarBackground:Landroid/graphics/drawable/Drawable;

    if-eq p1, v0, :cond_0

    .line 1805
    const/4 v0, 0x0

    .local v0, "var2":Z
    goto :goto_0

    .line 1807
    .end local v0    # "var2":Z
    :cond_0
    const/4 v0, 0x1

    .line 1810
    .restart local v0    # "var2":Z
    :goto_0
    return v0
.end method

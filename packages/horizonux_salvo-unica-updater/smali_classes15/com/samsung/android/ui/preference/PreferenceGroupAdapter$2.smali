.class Lcom/samsung/android/ui/preference/PreferenceGroupAdapter$2;
.super Lcom/samsung/android/ui/recyclerview/widget/DiffUtil$Callback;
.source "PreferenceGroupAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/ui/preference/PreferenceGroupAdapter;->syncMyPreferences()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/ui/preference/PreferenceGroupAdapter;

.field final synthetic val$comparisonCallback:Lcom/samsung/android/ui/preference/PreferenceManager$PreferenceComparisonCallback;

.field final synthetic val$oldVisibleList:Ljava/util/List;

.field final synthetic val$visiblePreferenceList:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/samsung/android/ui/preference/PreferenceGroupAdapter;Ljava/util/List;Ljava/util/List;Lcom/samsung/android/ui/preference/PreferenceManager$PreferenceComparisonCallback;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/ui/preference/PreferenceGroupAdapter;

    .line 88
    iput-object p1, p0, Lcom/samsung/android/ui/preference/PreferenceGroupAdapter$2;->this$0:Lcom/samsung/android/ui/preference/PreferenceGroupAdapter;

    iput-object p2, p0, Lcom/samsung/android/ui/preference/PreferenceGroupAdapter$2;->val$oldVisibleList:Ljava/util/List;

    iput-object p3, p0, Lcom/samsung/android/ui/preference/PreferenceGroupAdapter$2;->val$visiblePreferenceList:Ljava/util/List;

    iput-object p4, p0, Lcom/samsung/android/ui/preference/PreferenceGroupAdapter$2;->val$comparisonCallback:Lcom/samsung/android/ui/preference/PreferenceManager$PreferenceComparisonCallback;

    invoke-direct {p0}, Lcom/samsung/android/ui/recyclerview/widget/DiffUtil$Callback;-><init>()V

    return-void
.end method


# virtual methods
.method public areContentsTheSame(II)Z
    .locals 3
    .param p1, "oldItemPosition"    # I
    .param p2, "newItemPosition"    # I

    .line 106
    iget-object v0, p0, Lcom/samsung/android/ui/preference/PreferenceGroupAdapter$2;->val$comparisonCallback:Lcom/samsung/android/ui/preference/PreferenceManager$PreferenceComparisonCallback;

    iget-object v1, p0, Lcom/samsung/android/ui/preference/PreferenceGroupAdapter$2;->val$oldVisibleList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/ui/preference/SeslPreference;

    iget-object v2, p0, Lcom/samsung/android/ui/preference/PreferenceGroupAdapter$2;->val$visiblePreferenceList:Ljava/util/List;

    invoke-interface {v2, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/ui/preference/SeslPreference;

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/ui/preference/PreferenceManager$PreferenceComparisonCallback;->arePreferenceContentsTheSame(Lcom/samsung/android/ui/preference/SeslPreference;Lcom/samsung/android/ui/preference/SeslPreference;)Z

    move-result v0

    return v0
.end method

.method public areItemsTheSame(II)Z
    .locals 3
    .param p1, "oldItemPosition"    # I
    .param p2, "newItemPosition"    # I

    .line 101
    iget-object v0, p0, Lcom/samsung/android/ui/preference/PreferenceGroupAdapter$2;->val$comparisonCallback:Lcom/samsung/android/ui/preference/PreferenceManager$PreferenceComparisonCallback;

    iget-object v1, p0, Lcom/samsung/android/ui/preference/PreferenceGroupAdapter$2;->val$oldVisibleList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/ui/preference/SeslPreference;

    iget-object v2, p0, Lcom/samsung/android/ui/preference/PreferenceGroupAdapter$2;->val$visiblePreferenceList:Ljava/util/List;

    invoke-interface {v2, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/ui/preference/SeslPreference;

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/ui/preference/PreferenceManager$PreferenceComparisonCallback;->arePreferenceItemsTheSame(Lcom/samsung/android/ui/preference/SeslPreference;Lcom/samsung/android/ui/preference/SeslPreference;)Z

    move-result v0

    return v0
.end method

.method public getNewListSize()I
    .locals 1

    .line 96
    iget-object v0, p0, Lcom/samsung/android/ui/preference/PreferenceGroupAdapter$2;->val$visiblePreferenceList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getOldListSize()I
    .locals 1

    .line 91
    iget-object v0, p0, Lcom/samsung/android/ui/preference/PreferenceGroupAdapter$2;->val$oldVisibleList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

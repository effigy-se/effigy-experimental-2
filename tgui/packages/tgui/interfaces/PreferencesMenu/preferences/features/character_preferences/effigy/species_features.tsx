import {
  Feature,
  FeatureChoiced,
  FeatureChoicedServerData,
  FeatureTriColorInput,
  FeatureValueProps,
} from '../../base';
import { FeatureDropdownInput } from '../../dropdowns';

export const feature_anthro_tail: FeatureChoiced = {
  name: 'Tail',
  component: (
    props: FeatureValueProps<string, string, FeatureChoicedServerData>,
  ) => {
    return <FeatureDropdownInput buttons {...props} />;
  },
};

export const feature_neck_fluff: FeatureChoiced = {
  name: 'Neck Fluff',
  component: (
    props: FeatureValueProps<string, string, FeatureChoicedServerData>,
  ) => {
    return <FeatureDropdownInput buttons {...props} />;
  },
};

export const feature_cosmetic_wings: FeatureChoiced = {
  name: 'Wings',
  component: (
    props: FeatureValueProps<string, string, FeatureChoicedServerData>,
  ) => {
    return <FeatureDropdownInput buttons {...props} />;
  },
};

export const tail_tri: Feature<string[]> = {
  name: 'Tail Color',
  component: FeatureTriColorInput,
};
